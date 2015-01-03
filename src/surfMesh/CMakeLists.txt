#
#   Copyright (C) 2014-15 Chris Copsey
#   
#   This file is part of ccFOAM.
#
#   ccFOAM is free software: you can redistribute it and/or modify it under the
#   terms of the GNU General Public License as published by the Free Software
#   Foundation, either version 3 of the License, or (at your option) any later
#   version.
#
#   ccFOAM is distributed in the hope that it will be useful, but WITHOUT ANY
#   WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
#   details.
#
#   You should have received a copy of the GNU General Public License along
#   with ccFOAM.  If not, see <http://www.gnu.org/licenses/>.
#

set(SOURCES
  surfZone/surfZone/surfZone.C
  surfZone/surfZone/surfZoneIOList.C
  surfZone/surfZoneIdentifier/surfZoneIdentifier.C
  MeshedSurfaceAllocator/MeshedSurfaceIOAllocator.C
  MeshedSurface/MeshedSurfaceCore.C
  MeshedSurface/MeshedSurfaces.C
  UnsortedMeshedSurface/UnsortedMeshedSurfaces.C
  MeshedSurfaceProxy/MeshedSurfaceProxyCore.C
  surfaceRegistry/surfaceRegistry.C
  surfMesh/surfMesh.C
  surfMesh/surfMeshClear.C
  surfMesh/surfMeshIO.C
  surfFields/surfFields/surfFields.C
  surfFields/surfPointFields/surfPointFields.C
  surfaceFormats/surfaceFormatsCore.C
  surfaceFormats/ac3d/AC3DsurfaceFormatCore.C
  surfaceFormats/ac3d/AC3DsurfaceFormatRunTime.C
  surfaceFormats/ftr/FTRsurfaceFormatRunTime.C
  surfaceFormats/gts/GTSsurfaceFormatRunTime.C
  surfaceFormats/nas/NASsurfaceFormatRunTime.C
  surfaceFormats/obj/OBJsurfaceFormatRunTime.C
  surfaceFormats/obj/OBJstream.C
  surfaceFormats/off/OFFsurfaceFormatRunTime.C
  surfaceFormats/ofs/OFSsurfaceFormatCore.C
  surfaceFormats/ofs/OFSsurfaceFormatRunTime.C
  surfaceFormats/smesh/SMESHsurfaceFormatRunTime.C
  surfaceFormats/starcd/STARCDsurfaceFormatCore.C
  surfaceFormats/starcd/STARCDsurfaceFormatRunTime.C
  surfaceFormats/stl/STLsurfaceFormatCore.C
  surfaceFormats/stl/STLsurfaceFormatRunTime.C
  ${CMAKE_CURRENT_BINARY_DIR}/surfaceFormats/stl/STLsurfaceFormatASCII.C
  surfaceFormats/tri/TRIsurfaceFormatCore.C
  surfaceFormats/tri/TRIsurfaceFormatRunTime.C
  surfaceFormats/vtk/VTKsurfaceFormatCore.C
  surfaceFormats/vtk/VTKsurfaceFormatRunTime.C
  surfaceFormats/wrl/WRLsurfaceFormatCore.C
  surfaceFormats/wrl/WRLsurfaceFormatRunTime.C
  surfaceFormats/x3d/X3DsurfaceFormatCore.C
  surfaceFormats/x3d/X3DsurfaceFormatRunTime.C
)

set(LIBRARIES
  libfileFormats
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/fileFormats/include.cmake)
include_directories(${ZLIB_INCLUDE_DIR})
include_directories(${FLEX_INCLUDE_DIR})

file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/surfaceFormats/stl)
flex_target(STLsurfaceFormatASCII surfaceFormats/stl/STLsurfaceFormatASCII.L ${CMAKE_CURRENT_BINARY_DIR}/surfaceFormats/stl/STLsurfaceFormatASCII.C COMPILE_FLAGS -+)

add_library(libsurfMesh ${SOURCES})
set_target_properties(libsurfMesh PROPERTIES PREFIX "")

target_link_libraries(libsurfMesh ${LIBRARIES})

install(TARGETS libsurfMesh DESTINATION lib OPTIONAL)
