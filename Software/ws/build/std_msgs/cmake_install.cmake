# Install script for directory: /home/peter/kk/ws/src/std_msgs

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/msg" TYPE FILE FILES
    "/home/peter/kk/ws/src/std_msgs/msg/Bool.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Byte.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/ByteMultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Char.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/ColorRGBA.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Duration.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Empty.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Float32.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Float32MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Float64.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Float64MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Header.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int16.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int16MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int32.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int32MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int64.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int64MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int8.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Int8MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/MultiArrayDimension.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/MultiArrayLayout.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/String.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/Time.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt16.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt16MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt32.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt32MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt64.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt64MultiArray.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt8.msg"
    "/home/peter/kk/ws/src/std_msgs/msg/UInt8MultiArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/home/peter/kk/ws/build/std_msgs/catkin_generated/installspace/std_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/include/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/roseus/ros/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/common-lisp/ros/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/share/gennodejs/ros/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/peter/kk/ws/devel/lib/python3/dist-packages/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/peter/kk/ws/devel/lib/python3/dist-packages/std_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/peter/kk/ws/build/std_msgs/catkin_generated/installspace/std_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/home/peter/kk/ws/build/std_msgs/catkin_generated/installspace/std_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES
    "/home/peter/kk/ws/build/std_msgs/catkin_generated/installspace/std_msgsConfig.cmake"
    "/home/peter/kk/ws/build/std_msgs/catkin_generated/installspace/std_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs" TYPE FILE FILES "/home/peter/kk/ws/src/std_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/std_msgs" TYPE DIRECTORY FILES "/home/peter/kk/ws/src/std_msgs/include/std_msgs/" REGEX "/[^/]*\\.h$")
endif()

