# At least this cmake version is needed
CMAKE_MINIMUM_REQUIRED (VERSION 3.26.4)

# The library has to be dynamically linked to the header

INCLUDE_DIRECTORIES(
    ../includes
    ../gdbus
)

# 源码列表
set(SRCclient 
    libClient.c 
    ../gdbus/ExampleGdbusGenerated.c 
)

# 生成 so
add_library(ExampleClientlib SHARED ${SRCclient})

target_link_libraries(ExampleClientlib
    dl
    pthread
    rt
    gthread-2.0
    glib-2.0
    gio-2.0
    gobject-2.0
    gmodule-2.0
)

set_target_properties(ExampleClientlib PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${TARGET_OUT})