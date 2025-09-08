"""
Motion file definitions for FBX files corresponding to BVH data.
Frame ranges are from the original BVH specifications.
"""
from dataclasses import dataclass
from typing import List

# Base directories
DATA_DIR = "/home/ANT.AMAZON.COM/zhwuuu/workplace/GMR_fbx_offline/data"

@dataclass
class MotionFile:
    """Represents a motion file with its frame range information."""
    file_path: str
    start_frame: int
    end_frame: int
    motion_type: str  # "climbing" or "crawling"
    
    @property
    def frame_count(self) -> int:
        """Calculate total number of frames."""
        return self.end_frame - self.start_frame + 1

# Motion file data with frame ranges from the original BVH specifications
climbing_motion_data = [
    # From 0804 data
    MotionFile(f"{DATA_DIR}/0804/Take 2025-08-04 08.14.02 PM.fbx", 0, -1, "climbing"),
    
    # From 0811 data - files with frame ranges from original image
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.34.21 PM.fbx", 106, 2196, "climbing"),
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.34.52 PM.fbx", 900, 3700, "climbing"),
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.41.47 PM.fbx", 100, 1278, "climbing"),
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.46.47 PM.fbx", 50, 1423, "climbing"),
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.50.21 PM.fbx", 100, 1930, "climbing"),
    MotionFile(f"{DATA_DIR}/0811-data-cleaned/Take 2025-08-11 03.52.22 PM.fbx", 50, 2350, "climbing"),
    
    # From 0825 data - climbing movements
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 03.35.41 PM.fbx", 0, 938, "climbing"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 03.39.51 PM.fbx", 0, 1451, "climbing"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 03.43.36 PM.fbx", 0, 1356, "climbing"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 03.43.53 PM.fbx", 0, 1392, "climbing"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 03.49.28 PM.fbx", 0, 711, "climbing"),
]

crawling_motion_data = [
    # From 0825 data - crawling movements
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 02.32.25 PM.fbx", 0, 2302, "crawling"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 02.32.48 PM.fbx", 0, 2222, "crawling"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 02.22.26 PM.fbx", 0, 2649, "crawling"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 02.22.54 PM.fbx", 0, 2417, "crawling"),
    MotionFile(f"{DATA_DIR}/0825-motion-data/Take 2025-08-25 02.34.48 PM.fbx", 0, 1635, "crawling"),
]

# Combined list of all motion files
all_motion_data: List[MotionFile] = climbing_motion_data + crawling_motion_data
