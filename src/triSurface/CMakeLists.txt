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
  faceTriangulation/faceTriangulation.C
  meshTriangulation/meshTriangulation.C
  triSurface/triSurface.C
  triSurface/triSurfaceAddressing.C
  triSurface/stitchTriangles.C
  triSurface/interfaces/STL/writeSTL.C
  triSurface/interfaces/STL/readSTL.C
  ${CMAKE_CURRENT_BINARY_DIR}/triSurface/interfaces/STL/readSTLASCII.C
  triSurface/interfaces/STL/readSTLBINARY.C
  triSurface/interfaces/GTS/writeGTS.C
  triSurface/interfaces/GTS/readGTS.C
  triSurface/interfaces/OBJ/readOBJ.C
  triSurface/interfaces/OBJ/writeOBJ.C
  triSurface/interfaces/SMESH/writeSMESH.C
  triSurface/interfaces/OFF/readOFF.C
  triSurface/interfaces/OFF/writeOFF.C
  triSurface/interfaces/TRI/writeTRI.C
  triSurface/interfaces/TRI/readTRI.C
  triSurface/interfaces/DX/writeDX.C
  triSurface/interfaces/AC3D/readAC.C
  triSurface/interfaces/AC3D/writeAC.C
  triSurface/interfaces/VTK/readVTK.C
  triSurface/interfaces/VTK/writeVTK.C
  triSurface/interfaces/NAS/readNAS.C
  triSurface/geometricSurfacePatch/geometricSurfacePatch.C
  triSurface/surfacePatch/surfacePatch.C
  triSurface/surfacePatch/surfacePatchIOList.C
  tools/labelledTri/sortLabelledTri.C
  triSurfaceFields/triSurfaceFields.C
)

set(LIBRARIES
  libfileFormats
  libsurfMesh
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/fileFormats/include.cmake)
include(../../src/surfMesh/include.cmake)
include_directories(${ZLIB_INCLUDE_DIR})
include_directories(${FLEX_INCLUDE_DIR})

file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/triSurface/interfaces/STL)
flex_target(readSTLASCII triSurface/interfaces/STL/readSTLASCII.L ${CMAKE_CURRENT_BINARY_DIR}/triSurface/interfaces/STL/readSTLASCII.C COMPILE_FLAGS -+)

add_library(libtriSurface ${SOURCES})
set_target_properties(libtriSurface PROPERTIES PREFIX "")

target_link_libraries(libtriSurface ${LIBRARIES})

install(TARGETS libtriSurface DESTINATION lib OPTIONAL)
