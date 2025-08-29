# Install script for directory: /opt/nordic/ncs/v3.0.1/zephyr

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
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/suit-processor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/hal_tdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/nrf_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/oliver/Documents/Uni/HiWi/earable_main/open-earable-gateway/build/open-earable-gateway/zephyr/cmake/reports/cmake_install.cmake")
endif()

