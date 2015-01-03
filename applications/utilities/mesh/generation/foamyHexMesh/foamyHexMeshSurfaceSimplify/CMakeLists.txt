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
  foamyHexMeshSurfaceSimplify.C
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
  libperf_main
  libGL
  libconformalVoronoiMesh
  libdecompositionMethods
  libscotchDecomp
  libedgeMesh
  libfileFormats
  libtriSurface
  libmeshTools
  libdynamicMesh
)

include(include.cmake)
include(../../../../../../src/OpenFOAM/include.cmake)
include(../../../../../../src/OSspecific/POSIX/include.cmake)
include(../conformalVoronoiMesh/include.cmake)
include(../../../../../../src/edgeMesh/include.cmake)
include(../../../../../../src/mesh/autoMesh/include.cmake)
include(../../../../../../src/fileFormats/include.cmake)
include(../../../../../../src/triSurface/include.cmake)
include(../../../../../../src/meshTools/include.cmake)

add_executable(foamyHexMeshSurfaceSimplify ${SOURCES})

target_link_libraries(foamyHexMeshSurfaceSimplify ${LIBRARIES})

install(TARGETS foamyHexMeshSurfaceSimplify DESTINATION applications OPTIONAL)
