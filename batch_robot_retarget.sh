#!/bin/bash

# Batch retargeting script for PKL files in data/siheng/ to unitree_g1 robot
# This script will retarget all PKL files to the unitree_g1 robot

echo "Starting batch retargeting of PKL files in data/siheng/ to unitree_g1 robot..."

# Retarget each PKL file to unitree_g1 robot
python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 04.59.46 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 04.59.46 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.03.46 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.03.46 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.02.44 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.02.44 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.09.24 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.09.24 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.08.39 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.08.39 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.00.58 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.00.58 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.07.05 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.07.05 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.00.27 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.00.27 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.10.14 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.10.14 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.04.22 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.04.22 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.02.08 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.02.08 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.01.43 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.01.43 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.06.18 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.06.18 PM_robot.pkl"

python scripts/fbx_offline_to_robot.py --motion_file "data/siheng/Take 2025-08-22 05.07.53 PM.pkl" --robot unitree_g1 --save_path "data/siheng_robot/Take 2025-08-22 05.07.53 PM_robot.pkl"

echo "Batch retargeting completed!"
