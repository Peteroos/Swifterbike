#!/bin/bash

# setup env
source devel/setup.bash

# 直接运行可执行文件
# rosrun yesense_imu yesense_imu_node

# 使用 launch 文件运行
roslaunch yesense_imu run_without_rviz.launch
