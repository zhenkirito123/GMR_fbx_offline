#!/bin/bash

# Batch processing script for FBX files in data/siheng/
# This script will convert all FBX files to PKL format using the fbx_importer.py

echo "Starting batch processing of FBX files in data/siheng/..."

# Process each FBX file
python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 04.59.46 PM.fbx" --output "data/siheng/Take 2025-08-22 04.59.46 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.03.46 PM.fbx" --output "data/siheng/Take 2025-08-22 05.03.46 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.02.44 PM.fbx" --output "data/siheng/Take 2025-08-22 05.02.44 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.09.24 PM.fbx" --output "data/siheng/Take 2025-08-22 05.09.24 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.08.39 PM.fbx" --output "data/siheng/Take 2025-08-22 05.08.39 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.00.58 PM.fbx" --output "data/siheng/Take 2025-08-22 05.00.58 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.07.05 PM.fbx" --output "data/siheng/Take 2025-08-22 05.07.05 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.00.27 PM.fbx" --output "data/siheng/Take 2025-08-22 05.00.27 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.10.14 PM.fbx" --output "data/siheng/Take 2025-08-22 05.10.14 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.04.22 PM.fbx" --output "data/siheng/Take 2025-08-22 05.04.22 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.02.08 PM.fbx" --output "data/siheng/Take 2025-08-22 05.02.08 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.01.43 PM.fbx" --output "data/siheng/Take 2025-08-22 05.01.43 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.06.18 PM.fbx" --output "data/siheng/Take 2025-08-22 05.06.18 PM.pkl" --root-joint "Hips" --fps 120

python poselib/fbx_importer.py --input "data/siheng/Take 2025-08-22 05.07.53 PM.fbx" --output "data/siheng/Take 2025-08-22 05.07.53 PM.pkl" --root-joint "Hips" --fps 120

echo "Batch processing completed!"






