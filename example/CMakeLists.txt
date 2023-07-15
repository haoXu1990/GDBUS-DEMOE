# At least this cmake version is needed
CMAKE_MINIMUM_REQUIRED (VERSION 3.26.4)

# include header
INCLUDE_DIRECTORIES(
    ../includes
    ../gdbus
)

# build executable
add_executable(CltExample CltExample.c)

# link
target_link_libraries(CltExample ExampleClientlib pthread gio-2.0 gobject-2.0 gmodule-2.0 gthread-2.0 rt glib-2.0)

set_target_properties(CltExample PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${TARGET_OUT})