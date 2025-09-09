import argparse
import pathlib
import os
import time
import joblib

import numpy as np
import torch

from general_motion_retargeting import GeneralMotionRetargeting as GMR
from general_motion_retargeting import RobotMotionViewer
from general_motion_retargeting.utils.smpl import load_smplx_file, get_smplx_data_offline_fast

SMPLH_JOINTS = [
    "pelvis",
    "left_hip",
    "left_knee",
    "left_ankle",
    "left_foot",
    "right_hip",
    "right_knee",
    "right_ankle",
    "right_foot",
    "spine1",
    "spine2",
    "spine3",
    "neck",
    "head",
    "left_collar",
    "left_shoulder",
    "left_elbow",
    "left_wrist",
    'left_index1',
    'left_index2',
    'left_index3',
    'left_middle1',
    'left_middle2',
    'left_middle3',
    'left_pinky1',
    'left_pinky2',
    'left_pinky3',
    'left_ring1',
    'left_ring2',
    'left_ring3',
    'left_thumb1',
    'left_thumb2',
    'left_thumb3',
    "right_collar",
    "right_shoulder",
    "right_elbow",
    "right_wrist",
    "right_index1",
    "right_index2",
    "right_index3",
    "right_middle1",
    "right_middle2",
    "right_middle3",
    "right_pinky1",
    "right_pinky2",
    "right_pinky3",
    "right_ring1",
    "right_ring2",
    "right_ring3",
    "right_thumb1",
    "right_thumb2",
    "right_thumb3",
]


from rich import print

if __name__ == "__main__":
    
    HERE = pathlib.Path(__file__).parent

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--smplx_file",
        help="SMPLX motion file to load.",
        required=True,
        type=str,
    )
    
    parser.add_argument(
        "--robot",
        choices=["unitree_g1", "booster_t1", "stanford_toddy", "fourier_n1", 
                "engineai_pm01", "kuavo_s45", "hightorque_hi", "galaxea_r1pro"],
        default="unitree_g1",
    )
    
    parser.add_argument(
        "--save_path",
        default=None,
        help="Path to save the robot motion.",
    )
    
    parser.add_argument(
        "--loop",
        default=False,
        action="store_true",
        help="Loop the motion.",
    )

    parser.add_argument(
        "--record_video",
        default=False,
        action="store_true",
        help="Record the video.",
    )

    parser.add_argument(
        "--rate_limit",
        default=False,
        action="store_true",
        help="Limit the rate of the retargeted robot motion to keep the same as the human motion.",
    )

    parser.add_argument(
        "--actual_human_height",
        type=float,
        required=True,
        help="Actual height of the human subject (in meters).",
    )

    args = parser.parse_args()


    SMPLX_FOLDER = HERE / ".." / "assets" / "body_models"
    
    
    # Load SMPLX trajectory
    if not os.path.exists(args.smplx_file):
        print(f"File {args.smplx_file} does not exist")
        exit()
    data = torch.load(args.smplx_file)

    joint_pos = data[:, 162: 162+52*3].reshape(-1, 52, 3).detach().numpy()
    joint_rot = data[:, 331+52:331+52+52*4].reshape(-1, 52, 4).detach().numpy()[..., [3, 0, 1, 2]]

    aligned_fps = 30
    smplx_data_frames = []
    for i in range(len(joint_pos)):
        data_frame = {}
        for j in range(52):
            data_frame[SMPLH_JOINTS[j]] = (joint_pos[i, j], joint_rot[i, j])
        smplx_data_frames.append(data_frame)

    smplx_joints = [
        'pelvis', 'left_hip', 'right_hip', 'spine1', 'left_knee', 'right_knee', 'spine2', 'left_ankle', 'right_ankle', 'spine3', 'left_foot', 'right_foot', 'neck', 'left_collar', 'right_collar', 'head', 'left_shoulder', 'right_shoulder', 'left_elbow', 'right_elbow', 'left_wrist', 'right_wrist', 'left_middle1', 'right_middle1'
    ]
    joint_pos = []
    root_rot = []
    for i in range(len(smplx_data_frames)):
        sub_joint_pos = []
        for joint in smplx_joints:
            sub_joint_pos.append(smplx_data_frames[i][joint][0])
        joint_pos.append(sub_joint_pos)
        root_rot.append(smplx_data_frames[i]['pelvis'][1][[1,2,3,0]])
    joint_pos = np.array(joint_pos)
    root_rot = np.array(root_rot)

    phc_data = {
        "joints": joint_pos,
        "root_rot": root_rot,
    }
    with open(args.save_path, "wb") as f:
        joblib.dump(phc_data, f)
        print(f"Saved to {args.save_path}")

    exit()

    # smplx_data, body_model, smplx_output, actual_human_height = load_smplx_file(
    #     args.smplx_file, SMPLX_FOLDER
    # )
    
    # # align fps
    # tgt_fps = 30
    # smplx_data_frames, aligned_fps = get_smplx_data_offline_fast(smplx_data, body_model, smplx_output, tgt_fps=tgt_fps)
    
   
    # Initialize the retargeting system
    retarget = GMR(
        src_human="intermimic",
        tgt_robot=args.robot,
        actual_human_height=args.actual_human_height,
    )
    
    robot_motion_viewer = RobotMotionViewer(robot_type=args.robot,
                                            motion_fps=aligned_fps,
                                            transparent_robot=0,
                                            record_video=args.record_video,
                                            video_path=f"videos/{args.robot}_{args.smplx_file.split('/')[-1].split('.')[0]}.mp4",)
    

    curr_frame = 0
    # FPS measurement variables
    fps_counter = 0
    fps_start_time = time.time()
    fps_display_interval = 2.0  # Display FPS every 2 seconds
    
    if args.save_path is not None:
        save_dir = os.path.dirname(args.save_path)
        if save_dir:  # Only create directory if it's not empty
            os.makedirs(save_dir, exist_ok=True)
        qpos_list = []
    
    # Start the viewer
    i = 0

    while True:
        if args.loop:
            i = (i + 1) % len(smplx_data_frames)
        else:
            i += 1
            if i >= len(smplx_data_frames):
                break
        
        # FPS measurement
        fps_counter += 1
        current_time = time.time()
        if current_time - fps_start_time >= fps_display_interval:
            actual_fps = fps_counter / (current_time - fps_start_time)
            print(f"Actual rendering FPS: {actual_fps:.2f}")
            fps_counter = 0
            fps_start_time = current_time
        
        # Update task targets.
        smplx_data = smplx_data_frames[i]

        # retarget
        qpos = retarget.retarget(smplx_data)

        # visualize
        robot_motion_viewer.step(
            root_pos=qpos[:3],
            root_rot=qpos[3:7],
            dof_pos=qpos[7:],
            human_motion_data=retarget.scaled_human_data,
            # human_motion_data=smplx_data,
            human_pos_offset=np.array([0.0, 0.0, 0.0]),
            show_human_body_name=False,
            rate_limit=args.rate_limit,
        )
        if args.save_path is not None:
            qpos_list.append(qpos)
            
    if args.save_path is not None:
        root_pos = np.array([qpos[:3] for qpos in qpos_list])
        root_rot = np.array([qpos[3:7] for qpos in qpos_list])
        dof_pos = np.array([qpos[7:] for qpos in qpos_list])
        local_body_pos = None
        body_names = None
        
        # motion_data = {
        #     "fps": aligned_fps,
        #     "root_pos": root_pos,
        #     "root_rot": root_rot,
        #     "dof_pos": dof_pos,
        #     "local_body_pos": local_body_pos,
        #     "link_body_list": body_names,
        # }
        motion_data = np.concatenate([root_rot,root_pos, dof_pos], axis=1)
        with open(args.save_path, "wb") as f:
            joblib.dump(motion_data, f)
        print(f"Saved to {args.save_path}")
            
      
    
    robot_motion_viewer.close()
