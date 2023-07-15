### toolchain.cmake ###
# this is required
include(CMakeForceCompiler)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# set sysroot andt include directories
set(sysroot Z:/repo_test/t507_linux/out/t507/cqlht507_linux/longan/buildroot/host/usr/aarch64-buildroot-linux-gnu/sysroot)
set(CMAKE_FIND_ROOT_PATH ${sysroot})
set(CMAKE_SYSROOT ${sysroot})
INCLUDE_DIRECTORIES(${sysroot}/usr/include/glib-2.0)
INCLUDE_DIRECTORIES(${sysroot}/usr/include/)
INCLUDE_DIRECTORIES(${sysroot}/usr/lib/glib-2.0/include)
INCLUDE_DIRECTORIES(${sysroot}/usr/include/gio-unix-2.0)

# where is the target environment
set(toolchain D:/Linux/gcc-linaro-5.3.1-2016.05-i686-mingw32_aarch64-linux-gnu)
set(CMAKE_C_COMPILER_PREFIX aarch64-linux-gnu-)
set(CMAKE_CXX_COMPILER_PREFIX aarch64-linux-gnu-)
set(CMAKE_LINKER_PREFIX aarch64-linux-gnu-)
set(CMAKE_C_COMPILER ${toolchain}/bin/aarch64-linux-gnu-gcc.exe)
set(CMAKE_CXX_COMPILER ${toolchain}/bin/aarch64-linux-gnu-g++.exe)
set(CMAKE_LINKER ${toolchain}/bin/aarch64-linux-gnu-ld.exe)


# search for programs in the build host directories (not necessary)
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories
# SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
# SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)