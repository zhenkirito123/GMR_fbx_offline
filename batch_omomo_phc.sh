#!/bin/bash

# Batch processing script for OMOMO SMPL-X files to unitree_g1 robot
# This script will retarget all specified OMOMO SMPL-X files to the unitree_g1 robot

echo "Starting batch processing of OMOMO SMPL-X files to unitree_g1 robot..."

# Create output directory if it doesn't exist
mkdir -p data/omomo_phc

# Process OMOMO SMPL-X files
echo "Processing OMOMO SMPL-X motion files..."

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub3_largebox_003.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub3_largebox_003_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub3_largebox_005.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub3_largebox_005_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub8_largebox_006.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub8_largebox_006_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub16_largebox_007.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub16_largebox_007_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub10_largebox_049.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub10_largebox_049_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub16_largebox_047.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub16_largebox_047_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub10_largebox_085.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub10_largebox_085_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub7_largebox_022.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub7_largebox_022_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub7_largebox_047.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub7_largebox_047_robot.pkl"

python scripts/smplx_to_robot_phc_data.py --smplx_file "data/OMOMO_smplx/sub8_largebox_043.pkl" --robot unitree_g1 --save_path "data/omomo_phc/sub8_largebox_043_robot.pkl"

echo "Batch processing completed! Output files are in data/omomo_phc/"