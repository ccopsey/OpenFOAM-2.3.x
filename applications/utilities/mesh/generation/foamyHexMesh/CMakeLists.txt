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

include_directories(.)
include_directories(../../../../../src/OpenFOAM)
include_directories(../../../../../src/OSspecific/POSIX)
include_directories(../../../../../src/finiteVolume)
include_directories(${CGAL_INCLUDE_DIR})
include_directories(${GMP_INCLUDE_DIR})
include_directories(${MPFR_INCLUDE_DIR})
include_directories(${BOOST_INCLUDE_DIR})
include_directories(conformalVoronoiMesh)
include_directories(../../../../../src/meshTools)
include_directories(../../../../../src/parallel/decompose/decompositionMethods)
include_directories(../../../../../src/edgeMesh)
include_directories(../../../../../src/fileFormats)
include_directories(../../../../../src/dynamicMesh)
include_directories(../../../../../src/triSurface)
include_directories(../../../../../src/sampling)
include_directories(../../../../../src/mesh/autoMesh)
include_directories(vectorTools)

add_executable(foamyHexMesh ${SOURCES})

target_link_libraries(foamyHexMesh ${LIBRARIES})

install(TARGETS foamyHexMesh DESTINATION applications OPTIONAL)
