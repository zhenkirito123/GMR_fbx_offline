import pathlib

HERE = pathlib.Path(__file__).parent
IK_CONFIG_ROOT = HERE / "ik_configs"
ASSET_ROOT = HERE / ".." / "assets"

ROBOT_XML_DICT = {
    "unitree_g1": ASSET_ROOT / "unitree_g1" / "g1_mocap_29dof.xml",
    "booster_t1": ASSET_ROOT / "booster_t1" / "t1_mocap.xml",
    "stanford_toddy": ASSET_ROOT / "stanford_toddy" / "toddy_mocap.xml",
    "fourier_n1": ASSET_ROOT / "fourier_n1" / "n1_mocap.xml",
    "engineai_pm01": ASSET_ROOT / "engineai_pm01" / "pm_v2.xml",
    "kuavo_s45": ASSET_ROOT / "kuavo_s45" / "biped_s45_collision.xml",
    "hightorque_hi": ASSET_ROOT / "hightorque_hi" / "hi_25dof.xml",
    "galaxea_r1pro": ASSET_ROOT / "galaxea_r1pro" / "r1_pro.xml",
}

IK_CONFIG_DICT = {
    # offline data
    "smplx":{
        "unitree_g1": IK_CONFIG_ROOT / "smplx_to_g1.json",
        "booster_t1": IK_CONFIG_ROOT / "smplx_to_t1.json",
        "stanford_toddy": IK_CONFIG_ROOT / "smplx_to_toddy.json",
        "fourier_n1": IK_CONFIG_ROOT / "smplx_to_n1.json",
        "engineai_pm01": IK_CONFIG_ROOT / "smplx_to_pm01.json",
        "kuavo_s45": IK_CONFIG_ROOT / "smplx_to_kuavo.json",
        "hightorque_hi": IK_CONFIG_ROOT / "smplx_to_hi.json",
        "galaxea_r1pro": IK_CONFIG_ROOT / "smplx_to_r1pro.json",
    },
    "intermimic":{
        "unitree_g1": IK_CONFIG_ROOT / "intermimic_to_g1.json",
    },
    "bvh":{
        "unitree_g1": IK_CONFIG_ROOT / "bvh_to_g1.json",
        "booster_t1": IK_CONFIG_ROOT / "bvh_to_t1.json",
        "fourier_n1": IK_CONFIG_ROOT / "bvh_to_n1.json",
        "stanford_toddy": IK_CONFIG_ROOT / "bvh_to_toddy.json",
        "engineai_pm01": IK_CONFIG_ROOT / "bvh_to_pm01.json",
    },
    "fbx":{
        "unitree_g1": IK_CONFIG_ROOT / "fbx_to_g1.json",
    },
    "fbx_offline":{
        "unitree_g1": IK_CONFIG_ROOT / "fbx_offline_to_g1.json",
    },
}


ROBOT_BASE_DICT = {
    "unitree_g1": "pelvis",
    "booster_t1": "Waist",
    "stanford_toddy": "waist_link",
    "fourier_n1": "base_link",
    "engineai_pm01": "LINK_BASE",
    "kuavo_s45": "base_link",
    "hightorque_hi": "base_link",
    "galaxea_r1pro": "torso_link4",
}

VIEWER_CAM_DISTANCE_DICT = {
    "unitree_g1": 2.0,
    "booster_t1": 2.0,
    "stanford_toddy": 1.0,
    "fourier_n1": 2.0,
    "engineai_pm01": 2.0,
    "kuavo_s45": 3.0,
    "hightorque_hi": 2.0,
    "galaxea_r1pro": 3.0,
}