#!/bin/bash

# Batch retargeting script for PKL files in data/baseline/ to unitree_g1 robot
# This script will retarget all baseline motion PKL files to the unitree_g1 robot

echo "Starting batch retargeting of PKL files in data/baseline/ to unitree_g1 robot..."

# Create output directory if it doesn't exist
mkdir -p data/baseline_robot_phc

# Retarget climbing motion files from 0804
echo "Retargeting 0804 climbing motions..."
python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0804_Take_2025-08-04_08.14.02_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0804_Take_2025-08-04_08.14.02_PM_climbing_robot.pkl"

# Retarget climbing motion files from 0811
echo "Retargeting 0811 climbing motions..."
python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.34.21_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.34.21_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.34.52_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.34.52_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.41.47_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.41.47_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.46.47_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.46.47_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.50.21_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.50.21_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0811_Take_2025-08-11_03.52.22_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0811_Take_2025-08-11_03.52.22_PM_climbing_robot.pkl"

# Retarget climbing motion files from 0825
echo "Retargeting 0825 climbing motions..."
python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_03.35.41_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_03.35.41_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_03.39.51_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_03.39.51_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_03.43.36_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_03.43.36_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_03.43.53_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_03.43.53_PM_climbing_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_03.49.28_PM_climbing.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_03.49.28_PM_climbing_robot.pkl"

# Retarget crawling motion files from 0825
echo "Retargeting 0825 crawling motions..."
python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_02.32.25_PM_crawling.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_02.32.25_PM_crawling_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_02.32.48_PM_crawling.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_02.32.48_PM_crawling_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_02.22.26_PM_crawling.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_02.22.26_PM_crawling_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_02.22.54_PM_crawling.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_02.22.54_PM_crawling_robot.pkl"

python scripts/fbx_offline_to_robot_phc_data.py --motion_file "data/baseline/0825_Take_2025-08-25_02.34.48_PM_crawling.pkl" --robot unitree_g1 --save_path "data/baseline_robot_phc/0825_Take_2025-08-25_02.34.48_PM_crawling_robot.pkl"

echo "Batch retargeting completed! Output files are in data/baseline_robot_phc/"