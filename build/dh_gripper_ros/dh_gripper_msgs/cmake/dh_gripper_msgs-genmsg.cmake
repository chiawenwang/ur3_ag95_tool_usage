# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dh_gripper_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Idh_gripper_msgs:/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dh_gripper_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_custom_target(_dh_gripper_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dh_gripper_msgs" "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" ""
)

get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_custom_target(_dh_gripper_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dh_gripper_msgs" "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_custom_target(_dh_gripper_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dh_gripper_msgs" "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" ""
)

get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_custom_target(_dh_gripper_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dh_gripper_msgs" "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_cpp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_cpp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_cpp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(dh_gripper_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dh_gripper_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dh_gripper_msgs_generate_messages dh_gripper_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_cpp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_cpp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_cpp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_cpp _dh_gripper_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dh_gripper_msgs_gencpp)
add_dependencies(dh_gripper_msgs_gencpp dh_gripper_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dh_gripper_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_eus(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_eus(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_eus(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(dh_gripper_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dh_gripper_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dh_gripper_msgs_generate_messages dh_gripper_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_eus _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_eus _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_eus _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_eus _dh_gripper_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dh_gripper_msgs_geneus)
add_dependencies(dh_gripper_msgs_geneus dh_gripper_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dh_gripper_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_lisp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_lisp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_lisp(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(dh_gripper_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dh_gripper_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dh_gripper_msgs_generate_messages dh_gripper_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_lisp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_lisp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_lisp _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_lisp _dh_gripper_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dh_gripper_msgs_genlisp)
add_dependencies(dh_gripper_msgs_genlisp dh_gripper_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dh_gripper_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_nodejs(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_nodejs(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_nodejs(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dh_gripper_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dh_gripper_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dh_gripper_msgs_generate_messages dh_gripper_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_nodejs _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_nodejs _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_nodejs _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_nodejs _dh_gripper_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dh_gripper_msgs_gennodejs)
add_dependencies(dh_gripper_msgs_gennodejs dh_gripper_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dh_gripper_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_py(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_py(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
)
_generate_msg_py(dh_gripper_msgs
  "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(dh_gripper_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dh_gripper_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dh_gripper_msgs_generate_messages dh_gripper_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_py _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_py _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotCtrl.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_py _dh_gripper_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gavin/robot_PKU/handwriting/src/dh_gripper_ros/dh_gripper_msgs/msg/GripperRotState.msg" NAME_WE)
add_dependencies(dh_gripper_msgs_generate_messages_py _dh_gripper_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dh_gripper_msgs_genpy)
add_dependencies(dh_gripper_msgs_genpy dh_gripper_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dh_gripper_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dh_gripper_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dh_gripper_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dh_gripper_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dh_gripper_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dh_gripper_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dh_gripper_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dh_gripper_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dh_gripper_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dh_gripper_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dh_gripper_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
