# At least this cmake version is needed
CMAKE_MINIMUM_REQUIRED (VERSION 3.26.4)

# include
INCLUDE_DIRECTORIES(
    ../includes
    ../gdbus
)

# build executable
add_executable(SvrExample SvrExample.c libServer.c ../gdbus/ExampleGdbusGenerated.c)

# link
target_link_libraries(SvrExample pthread gio-2.0 gobject-2.0 gmodule-2.0 gthread-2.0 rt glib-2.0)

# copy build target to ${TARGET_OUT}
set_target_properties(SvrExample PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${TARGET_OUT})