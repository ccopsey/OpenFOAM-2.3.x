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

#add_subdirectory(cellSizeAndAlignmentGrid)
add_subdirectory(conformalVoronoiMesh)
#add_subdirectory(foamyHexMeshBackgroundMesh)
#add_subdirectory(foamyHexMeshSurfaceSimplify)

set(SOURCES
  foamyHexMesh.C
)

set(LIBRARIES
  libOpenFOAM
  libconformalVoronoiMesh
  libmeshTools
  libdecompositionMethods
  libptscotchDecomp
  libedgeMesh
  libfileFormats
  libtriSurface
  libdynamicMesh
  libsampling
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(${CGAL_INCLUDE_DIR})
include_directories(${GMP_INCLUDE_DIR})
include_directories(${MPFR_INCLUDE_DIR})
include_directories(${BOOST_INCLUDE_DIR})
include(conformalVoronoiMesh/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/parallel/decompose/decompositionMethods/include.cmake)
include(../../../../../src/edgeMesh/include.cmake)
include(../../../../../src/fileFormats/include.cmake)
include(../../../../../src/dynamicMesh/include.cmake)
include(../../../../../src/triSurface/include.cmake)
include(../../../../../src/sampling/include.cmake)
include(../../../../../src/mesh/autoMesh/include.cmake)
include_directories(vectorTools)

add_executable(foamyHexMesh ${SOURCES})

target_link_libraries(foamyHexMesh ${LIBRARIES})

install(TARGETS foamyHexMesh DESTINATION applications OPTIONAL)
