# Install script for directory: /home/peter/kk/ws/src/yesense

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/peter/kk/ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yesense_imu/msg" TYPE FILE FILES
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuEulerAngle.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuLocation.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuQuaternion.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuStatus.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuUtcTime.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuVelocity.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuMasterGnssData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuSlaveGnssData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuGnssData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuGpsData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuNavData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuInertialData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuSensorData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuAllData.msg"
    "/home/peter/kk/ws/src/yesense/msg/YesenseImuCmdResp.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/yesense_imu" TYPE FILE FILES "/home/peter/kk/ws/devel/include/yesense_imu/YesenseConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/yesense_imu" TYPE FILE FILES "/home/peter/kk/ws/devel/lib/python3/dist-packages/yesense_imu/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/peter/kk/ws/devel/lib/python3/dist-packages/yesense_imu/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/yesense_imu" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/lib/python3/dist-packages/yesense_imu/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yesense_imu/cmake" TYPE FILE FILES "/home/peter/kk/ws/build/yesense/catkin_generated/installspace/yesense_imu-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/include/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/roseus/ros/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/common-lisp/ros/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/gennodejs/ros/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/peter/kk/ws/devel/lib/python3/dist-packages/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/lib/python3/dist-packages/yesense_imu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/peter/kk/ws/build/yesense/catkin_generated/installspace/yesense_imu.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yesense_imu/cmake" TYPE FILE FILES "/home/peter/kk/ws/build/yesense/catkin_generated/installspace/yesense_imu-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yesense_imu/cmake" TYPE FILE FILES
    "/home/peter/kk/ws/build/yesense/catkin_generated/installspace/yesense_imuConfig.cmake"
    "/home/peter/kk/ws/build/yesense/catkin_generated/installspace/yesense_imuConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yesense_imu" TYPE FILE FILES "/home/peter/kk/ws/src/yesense/package.xml")
endif()

