#!/bin/bash

# Batch processing script for baseline motion files
# This script will convert all FBX files from motion_files_fbx.py to PKL format

conda activate bvh

echo "Starting batch processing of baseline motion files..."

# Create output directory if it doesn't exist
mkdir -p data/baseline

# Process climbing motion files from 0804
echo "Processing 0804 climbing motions..."
python poselib/fbx_importer.py --input "data/0804/Take 2025-08-04 08.14.02 PM.fbx" --output "data/baseline/0804_Take_2025-08-04_08.14.02_PM_climbing.pkl" --root-joint "Hips" --fps 120

# Process climbing motion files from 0811
echo "Processing 0811 climbing motions..."
python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.34.21 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.34.21_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.34.52 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.34.52_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.41.47 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.41.47_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.46.47 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.46.47_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.50.21 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.50.21_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0811-data-cleaned/Take 2025-08-11 03.52.22 PM.fbx" --output "data/baseline/0811_Take_2025-08-11_03.52.22_PM_climbing.pkl" --root-joint "Hips" --fps 120

# Process climbing motion files from 0825
echo "Processing 0825 climbing motions..."
python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 03.35.41 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_03.35.41_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 03.39.51 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_03.39.51_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 03.43.36 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_03.43.36_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 03.43.53 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_03.43.53_PM_climbing.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 03.49.28 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_03.49.28_PM_climbing.pkl" --root-joint "Hips" --fps 120

# Process crawling motion files from 0825
echo "Processing 0825 crawling motions..."
python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 02.32.25 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_02.32.25_PM_crawling.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 02.32.48 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_02.32.48_PM_crawling.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 02.22.26 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_02.22.26_PM_crawling.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 02.22.54 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_02.22.54_PM_crawling.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/0825-motion-data/Take 2025-08-25 02.34.48 PM.fbx" --output "data/baseline/0825_Take_2025-08-25_02.34.48_PM_crawling.pkl" --root-joint "Hips" --fps 120

echo "Batch processing completed! Output files are in data/baseline/"