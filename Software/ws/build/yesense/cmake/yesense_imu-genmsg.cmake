# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yesense_imu: 15 messages, 0 services")

set(MSG_I_FLAGS "-Iyesense_imu:/home/peter/kk/ws/src/yesense/msg;-Istd_msgs:/home/peter/kk/ws/src/std_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yesense_imu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" "yesense_imu/YesenseImuVelocity:yesense_imu/YesenseImuUtcTime:yesense_imu/YesenseImuLocation"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" "yesense_imu/YesenseImuMasterGnssData:yesense_imu/YesenseImuVelocity:yesense_imu/YesenseImuUtcTime:yesense_imu/YesenseImuSlaveGnssData:yesense_imu/YesenseImuLocation"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" ""
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" "yesense_imu/YesenseImuStatus:yesense_imu/YesenseImuUtcTime:yesense_imu/YesenseImuLocation"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" "yesense_imu/YesenseImuEulerAngle:geometry_msgs/Accel:yesense_imu/YesenseImuQuaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" "yesense_imu/YesenseImuEulerAngle:yesense_imu/YesenseImuQuaternion:geometry_msgs/Accel:yesense_imu/YesenseImuLocation:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" "yesense_imu/YesenseImuEulerAngle:yesense_imu/YesenseImuMasterGnssData:yesense_imu/YesenseImuVelocity:yesense_imu/YesenseImuQuaternion:yesense_imu/YesenseImuUtcTime:yesense_imu/YesenseImuSlaveGnssData:geometry_msgs/Accel:yesense_imu/YesenseImuLocation:yesense_imu/YesenseImuGnssData:yesense_imu/YesenseImuStatus:yesense_imu/YesenseImuGpsData:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_custom_target(_yesense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yesense_imu" "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)
_generate_msg_cpp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
)

### Generating Services

### Generating Module File
_generate_module_cpp(yesense_imu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yesense_imu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yesense_imu_generate_messages yesense_imu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_cpp _yesense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yesense_imu_gencpp)
add_dependencies(yesense_imu_gencpp yesense_imu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yesense_imu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)
_generate_msg_eus(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
)

### Generating Services

### Generating Module File
_generate_module_eus(yesense_imu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yesense_imu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yesense_imu_generate_messages yesense_imu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_eus _yesense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yesense_imu_geneus)
add_dependencies(yesense_imu_geneus yesense_imu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yesense_imu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)
_generate_msg_lisp(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
)

### Generating Services

### Generating Module File
_generate_module_lisp(yesense_imu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yesense_imu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yesense_imu_generate_messages yesense_imu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_lisp _yesense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yesense_imu_genlisp)
add_dependencies(yesense_imu_genlisp yesense_imu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yesense_imu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)
_generate_msg_nodejs(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
)

### Generating Services

### Generating Module File
_generate_module_nodejs(yesense_imu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yesense_imu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yesense_imu_generate_messages yesense_imu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_nodejs _yesense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yesense_imu_gennodejs)
add_dependencies(yesense_imu_gennodejs yesense_imu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yesense_imu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
  "${MSG_I_FLAGS}"
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg;/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)
_generate_msg_py(yesense_imu
  "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
)

### Generating Services

### Generating Module File
_generate_module_py(yesense_imu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yesense_imu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yesense_imu_generate_messages yesense_imu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg" NAME_WE)
add_dependencies(yesense_imu_generate_messages_py _yesense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yesense_imu_genpy)
add_dependencies(yesense_imu_genpy yesense_imu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yesense_imu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yesense_imu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yesense_imu_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yesense_imu_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yesense_imu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yesense_imu_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(yesense_imu_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yesense_imu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yesense_imu_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yesense_imu_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yesense_imu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yesense_imu_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(yesense_imu_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yesense_imu
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yesense_imu_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yesense_imu_generate_messages_py geometry_msgs_generate_messages_py)
endif()
