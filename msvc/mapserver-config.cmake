# - Config file for the mapserver package
# It defines the following variables
#  MAPSERVER_INCLUDE_DIRS - include directories for mapserver
#  MAPSERVER_LIBRARIES    - libraries to link against
#  MAPSERVER_EXECUTABLES  - executables build for mapserver

# Compute paths
get_filename_component(MAPSERVER_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(MAPSERVER_INCLUDE_DIRS "K:/Development/op3d_active/mapserver-7.4.2;K:/Development/op3d_active/mapserver-7.4.2/msvc")

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET mapserver AND NOT MapServer_BINARY_DIR)
  include("${MAPSERVER_CMAKE_DIR}/mapserverTargets.cmake")
endif()

# These are IMPORTED targets created by mapserverTargets.cmake
set(MAPSERVER_LIBRARIES mapserver)
set(MAPSERVER_EXECUTABLES sortshp shptree shptreevis msencrypt legend scalebar tile4ms shptreetst shp2img mapserv)
