# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "user_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iuser_pkg:/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(user_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_custom_target(_user_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "user_pkg" "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(user_pkg
  "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/user_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(user_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/user_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(user_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(user_pkg_generate_messages user_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_dependencies(user_pkg_generate_messages_cpp _user_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(user_pkg_gencpp)
add_dependencies(user_pkg_gencpp user_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS user_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(user_pkg
  "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/user_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(user_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/user_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(user_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(user_pkg_generate_messages user_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_dependencies(user_pkg_generate_messages_eus _user_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(user_pkg_geneus)
add_dependencies(user_pkg_geneus user_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS user_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(user_pkg
  "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/user_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(user_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/user_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(user_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(user_pkg_generate_messages user_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_dependencies(user_pkg_generate_messages_lisp _user_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(user_pkg_genlisp)
add_dependencies(user_pkg_genlisp user_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS user_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(user_pkg
  "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/user_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(user_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/user_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(user_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(user_pkg_generate_messages user_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_dependencies(user_pkg_generate_messages_nodejs _user_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(user_pkg_gennodejs)
add_dependencies(user_pkg_gennodejs user_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS user_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(user_pkg
  "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/user_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(user_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/user_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(user_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(user_pkg_generate_messages user_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/antoronson/git_trade/turnConveyor/turnConveyor/ws_turnConveyor/src/user_pkg/msg/FloatList.msg" NAME_WE)
add_dependencies(user_pkg_generate_messages_py _user_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(user_pkg_genpy)
add_dependencies(user_pkg_genpy user_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS user_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/user_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/user_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(user_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/user_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/user_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(user_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/user_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/user_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(user_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/user_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/user_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(user_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/user_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/user_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/user_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(user_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
