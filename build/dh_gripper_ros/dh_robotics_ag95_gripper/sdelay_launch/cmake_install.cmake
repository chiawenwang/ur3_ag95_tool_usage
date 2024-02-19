# Install script for directory: /home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gavin/robot_PKU/handwriting/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gavin/robot_PKU/handwriting/build/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/catkin_generated/installspace/sdelay_launch.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sdelay_launch/cmake" TYPE FILE FILES
    "/home/gavin/robot_PKU/handwriting/build/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/catkin_generated/installspace/sdelay_launchConfig.cmake"
    "/home/gavin/robot_PKU/handwriting/build/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/catkin_generated/installspace/sdelay_launchConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sdelay_launch" TYPE FILE FILES "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sdelay_launch" TYPE PROGRAM FILES "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/scripts/timed_roslaunch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sdelay_launch" TYPE DIRECTORY FILES "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_robotics_ag95_gripper/sdelay_launch/launch")
endif()

