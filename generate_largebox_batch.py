#!/usr/bin/env python3
"""
Generate a batch processing script for all largebox motions in OMOMO_smplx directory.
This script creates a bash script that will retarget all largebox SMPL-X files to unitree_g1 robot.
"""

import os
import glob
from pathlib import Path


def main():
    # Define paths
    input_dir = "data/OMOMO_smplx"
    output_dir = "data/omomo_robot_largebox"
    script_path = "batch_omomo_largebox_all.sh"
    
    # Find all largebox files
    largebox_pattern = os.path.join(input_dir, "*largebox*.pkl")
    largebox_files = sorted(glob.glob(largebox_pattern))
    
    if not largebox_files:
        print(f"No largebox files found in {input_dir}")
        return
    
    print(f"Found {len(largebox_files)} largebox motion files")
    
    # Generate bash script
    with open(script_path, 'w') as f:
        f.write("#!/bin/bash\n\n")
        f.write("# Batch processing script for all OMOMO largebox SMPL-X files to unitree_g1 robot\n")
        f.write("# Auto-generated script for processing all largebox motions\n\n")
        f.write("echo \"Starting batch processing of all OMOMO largebox SMPL-X files to unitree_g1 robot...\"\n\n")
        f.write("# Create output directory if it doesn't exist\n")
        f.write(f"mkdir -p {output_dir}\n\n")
        f.write("# Process all largebox SMPL-X files\n")
        f.write("echo \"Processing OMOMO largebox SMPL-X motion files...\"\n\n")
        
        # Process each file
        for file_path in largebox_files:
            # Get just the filename without path
            filename = os.path.basename(file_path)
            # Create output filename
            output_filename = filename.replace('.pkl', '_robot.pkl')
            
            f.write(f'python scripts/smplx_to_robot.py --smplx_file "{file_path}" --robot unitree_g1 --save_path "{output_dir}/{output_filename}"\n\n')
        
        f.write('echo "Batch processing completed! Output files are in {output_dir}/"\n')
    
    # Make the script executable
    os.chmod(script_path, 0o755)
    
    print(f"Generated batch script: {script_path}")
    print(f"Found files from subjects: {sorted(set([f.split('_')[0].replace('data/OMOMO_smplx/sub', 'sub') for f in largebox_files]))}")
    print(f"Total files to process: {len(largebox_files)}")
    print(f"Output directory: {output_dir}")
    print(f"\nTo run the batch script: ./{script_path}")


if __name__ == "__main__":
    main()