cmake_minimum_required (VERSION 3.26.4)

project(gdbus-demo)

set(CMAKE_VERBOSE_MAKEFILE on)

# set build out
set(TARGET_OUT ${CMAKE_SOURCE_DIR}/out)

# set library search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${TARGET_OUT})
# set flags
# ADD_DEFINITIONS(
#         -O3 -g -W -Wall
#         -Wunused-variable -Wunused-parameter -Wunused-function -Wunused
#         -Wno-deprecated -Woverloaded-virtual -Wwrite-strings
#         -D__WUR= -D_REENTRANT -D_FILE_OFFSET_BITS=64 -DTIXML_USE_STL
# )

set(CMAKE_C_FLAGS "-Wall -O2 -g -Wl,--no-undefined -rdynamic -pipe  -Wall -W -D_REENTRANT -fPIC -DGDBUSLIB_COM -Wunused-parameter")
#######################################################################################
# this var must be define by designer,a lot of cmakeVar will be define by this var    #
#######################################################################################
#set(APP_NAME "gdbus-demo1")

#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)

#add_subdirectory(gdbus)
add_subdirectory(client)
add_subdirectory(server)
add_subdirectory(example)

##################### config CPack #############################################
# set(CPACK_GENERATOR "TGZ")

# set(CPACK_RPM_PACKAGE_DESCRIPTION_SUMMARY "install gdbus-demo")
# set(CPACK_RPM_PACKAGE_VENDOR "vesoft")
# set(CPACK_RPM_PACKAGE_NAME "gdbus-demo")
# set(CPACK_RPM_PACKAGE_VERSION_MAJOR "0")
# set(CPACK_RPM_PACKAGE_VERSION_MINOR "1")
# set(CPACK_RPM_PACKAGE_VERSION_PATCH "0")
#set(CPACK_SET_DESTDIR true)
#set(CPACK_INSTALL_PREFIX "/usr")

# include(CPack)

# install(FILES   includes/libClient.h
#         DESTINATION usr/include/gdbus-demo/
# )

