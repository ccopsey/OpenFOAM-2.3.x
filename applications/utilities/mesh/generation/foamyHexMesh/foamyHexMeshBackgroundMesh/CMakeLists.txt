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
  foamyHexMeshBackgroundMesh.C
)

set(LIBRARIES
  libOpenFOAM
  ${CGAL_LIBRARY}
  ${GMP_LIBRARY}
  ${MPFR_LIBRARY}
  ${BOOST_SYSTEM_LIBRARY}
  ${BOOST_THREAD_LIBRARY}
  libboost_thread
  libmpfr
  libgmp
  libconformalVoronoiMesh
  libdecompositionMethods
  libedgeMesh
  libtriSurface
  libmeshTools
  libfileFormats
  libsampling
  libdynamicMesh
  libfiniteVolume
)

include(include.cmake)
include(../../../../../../src/OpenFOAM/include.cmake)
include(../../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../../src/finiteVolume/include.cmake)
include_directories(${CGAL_INCLUDE_DIR})
include_directories(${GMP_INCLUDE_DIR})
include_directories(${MPFR_INCLUDE_DIR})
include_directories(${BOOST_INCLUDE_DIR})
include(../conformalVoronoiMesh/include.cmake)
include(../../../../../../src/parallel/decompose/decompositionMethods/include.cmake)
include(../../../../../../src/edgeMesh/include.cmake)
include(../../../../../../src/mesh/autoMesh/include.cmake)
include(../../../../../../src/triSurface/include.cmake)
include(../../../../../../src/meshTools/include.cmake)
include(../../../../../../src/sampling/include.cmake)
include(../../../../../../src/fileFormats/include.cmake)
include(../../../../../../src/dynamicMesh/include.cmake)
include_directories(../vectorTools)

add_executable(foamyHexMeshBackgroundMesh ${SOURCES})

target_link_libraries(foamyHexMeshBackgroundMesh ${LIBRARIES})

install(TARGETS foamyHexMeshBackgroundMesh DESTINATION applications OPTIONAL)
