# Install script for directory: /opt/nordic/ncs/v3.0.1/zephyr/subsys

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/nordic/ncs/toolchains/ef4fc6722e/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/canbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/debug/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/fb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/fs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/ipc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/logging/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/mem_mgmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/mgmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/modbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/pm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/portability/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/random/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/rtio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/sd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/stats/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/storage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/task_wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/testsuite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/tracing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/ipc_radio/zephyr/subsys/bluetooth/cmake_install.cmake")
endif()

