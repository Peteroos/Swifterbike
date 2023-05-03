## *********************************************************
##
## File autogenerated for the yesense_imu package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'A size parameter which is edited via an enum', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'id', 'edit_method': "{'enum_description': 'An enum of ID', 'enum': [{'srcline': 29, 'description': 'Set Param of the IMU temporary', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'ConfigStatusMemery'}, {'srcline': 30, 'description': 'Set Param of the IMU permanent', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'ConfigStatusFlash'}]}", 'default': 1, 'level': 65280, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'Reset yaw to zero', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'param_setting', 'edit_method': '', 'default': False, 'level': 256, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'A size parameter which is edited via an enum', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'baudrate', 'edit_method': "{'enum_description': 'An enum to set baudrate', 'enum': [{'srcline': 43, 'description': 'set baudrate as 9600   bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '9600_bps'}, {'srcline': 44, 'description': 'set baudrate as 38400  bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '38400_bps'}, {'srcline': 45, 'description': 'set baudrate as 115200 bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '115200_bps'}, {'srcline': 46, 'description': 'set baudrate as 460800 bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': '460800_bps'}, {'srcline': 47, 'description': 'set baudrate as 921600 bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': '921600_bps'}, {'srcline': 48, 'description': 'set baudrate as 19200  bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': '19200_bps'}, {'srcline': 49, 'description': 'set baudrate as 57600  bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 7, 'ctype': 'int', 'type': 'int', 'name': '57600_bps'}, {'srcline': 50, 'description': 'set baudrate as 57600  bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': '76800_bps'}, {'srcline': 51, 'description': 'set baudrate as 230400 bps', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': '230400_bps'}]}", 'default': 4, 'level': 512, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'A size parameter which is edited via an enum', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'freequency', 'edit_method': "{'enum_description': 'An enum to set output freequency', 'enum': [{'srcline': 56, 'description': 'set output freequency as 1    Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '1_Hz'}, {'srcline': 57, 'description': 'set output freequency as 2    Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '2_Hz'}, {'srcline': 58, 'description': 'set output freequency as 5    Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '5_Hz'}, {'srcline': 59, 'description': 'set output freequency as 10   Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': '10_Hz'}, {'srcline': 60, 'description': 'set output freequency as 20   Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': '20_Hz'}, {'srcline': 61, 'description': 'set output freequency as 25   Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': '25_Hz'}, {'srcline': 62, 'description': 'set output freequency as 50   Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 7, 'ctype': 'int', 'type': 'int', 'name': '50_Hz'}, {'srcline': 63, 'description': 'set output freequency as 100  Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': '100_Hz'}, {'srcline': 64, 'description': 'set output freequency as 200  Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': '200_Hz'}, {'srcline': 65, 'description': 'set output freequency as 250  Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': '250_Hz'}, {'srcline': 66, 'description': 'set output freequency as 500  Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 11, 'ctype': 'int', 'type': 'int', 'name': '500_Hz'}, {'srcline': 67, 'description': 'set output freequency as 1000 Hz', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 12, 'ctype': 'int', 'type': 'int', 'name': '1000_Hz'}]}", 'default': 8, 'level': 768, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': "Enable imu's speed output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'speed_output_switch', 'edit_method': '', 'default': True, 'level': 1024, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's location output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'location_output_switch', 'edit_method': '', 'default': True, 'level': 1025, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's UTC output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'UTC_output_switch', 'edit_method': '', 'default': True, 'level': 1026, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's quaternion output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'quaternion_output_switch', 'edit_method': '', 'default': True, 'level': 1027, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's euler angle output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'euler_output_switch', 'edit_method': '', 'default': True, 'level': 1028, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's magnetic output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'magnetic_output_switch', 'edit_method': '', 'default': True, 'level': 1029, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's angular velicity output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'angular_velicity_output_switch', 'edit_method': '', 'default': True, 'level': 1030, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's acceleration increament output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'acceleration_increament_output_switch', 'edit_method': '', 'default': True, 'level': 1031, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's velicity increament output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'velicity_increament_output_switch', 'edit_method': '', 'default': True, 'level': 1032, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's quaternion increament output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'quaternion_increament_output_switch', 'edit_method': '', 'default': True, 'level': 1033, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable imu's tempature output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'imu_temp_output_switch', 'edit_method': '', 'default': True, 'level': 1034, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable second imu's angle velocity output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'second_imu_angle_output_switch', 'edit_method': '', 'default': True, 'level': 1035, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable second imu's accel output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'second_imu_accel_output_switch', 'edit_method': '', 'default': True, 'level': 1036, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Enable second imu's tempature output", 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'second_imu_temp_output_switch', 'edit_method': '', 'default': True, 'level': 1037, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Enable free accel output', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'free_accel_output_switch', 'edit_method': '', 'default': True, 'level': 1038, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'Enable timestamp output', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'timestamp_output_switch', 'edit_method': '', 'default': True, 'level': 1039, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': "Reset imu's parameter", 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'reset_param', 'edit_method': "{'enum_description': 'An enum to reset param', 'enum': [{'srcline': 91, 'description': 'Reset Roll & Pitch', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 17, 'ctype': 'int', 'type': 'int', 'name': 'RESET_ROLL_PITCH'}, {'srcline': 92, 'description': 'Reset Yaw', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 18, 'ctype': 'int', 'type': 'int', 'name': 'RESET_YAW'}]}", 'default': 17, 'level': 1280, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'ARHS or VRU mode', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mode_setting', 'edit_method': "{'enum_description': 'An enum of output mode', 'enum': [{'srcline': 98, 'description': 'ARHS or VRU Handover', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'ARHS_VRU_Handover'}, {'srcline': 99, 'description': 'CUSTOMIZE or  NEMA0183 protocal Handover', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'CUSTOMIZE_NEMA0183_Handover'}, {'srcline': 100, 'description': 'HIGH or LOW output freequency Handover', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'HIHG_LOW_frequency_Handover'}, {'srcline': 101, 'description': 'GYRO BIAS Initialization', 'srcfile': '/home/peter/kk/ws/src/yesense/cfg/Yesense.cfg', 'cconsttype': 'const int', 'value': 80, 'ctype': 'int', 'type': 'int', 'name': 'GYRO_BIAS_Initialization'}]}", 'default': 2, 'level': 19712, 'min': -2147483648, 'type': 'int'}, {'srcline': 291, 'description': 'GPHPR output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPHPR_output_switch', 'edit_method': '', 'default': False, 'level': 19968, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'GPVTG output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPVTG_output_switch', 'edit_method': '', 'default': False, 'level': 19969, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'GPRMC output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPRMC_output_switch', 'edit_method': '', 'default': False, 'level': 19970, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'GPGSV output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPGSV_output_switch', 'edit_method': '', 'default': False, 'level': 19971, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'GPGSA output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPGSA_output_switch', 'edit_method': '', 'default': False, 'level': 19972, 'min': False, 'type': 'bool'}, {'srcline': 291, 'description': 'GPGGA output switch', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'GPGGA_output_switch', 'edit_method': '', 'default': False, 'level': 19973, 'min': False, 'type': 'bool'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

YesenseNode_ConfigStatusMemery = 1
YesenseNode_ConfigStatusFlash = 2
YesenseNode_9600_bps = 1
YesenseNode_38400_bps = 2
YesenseNode_115200_bps = 3
YesenseNode_460800_bps = 4
YesenseNode_921600_bps = 5
YesenseNode_19200_bps = 6
YesenseNode_57600_bps = 7
YesenseNode_76800_bps = 8
YesenseNode_230400_bps = 9
YesenseNode_1_Hz = 1
YesenseNode_2_Hz = 2
YesenseNode_5_Hz = 3
YesenseNode_10_Hz = 4
YesenseNode_20_Hz = 5
YesenseNode_25_Hz = 6
YesenseNode_50_Hz = 7
YesenseNode_100_Hz = 8
YesenseNode_200_Hz = 9
YesenseNode_250_Hz = 10
YesenseNode_500_Hz = 11
YesenseNode_1000_Hz = 12
YesenseNode_RESET_ROLL_PITCH = 17
YesenseNode_RESET_YAW = 18
YesenseNode_ARHS_VRU_Handover = 2
YesenseNode_CUSTOMIZE_NEMA0183_Handover = 3
YesenseNode_HIHG_LOW_frequency_Handover = 4
YesenseNode_GYRO_BIAS_Initialization = 80
