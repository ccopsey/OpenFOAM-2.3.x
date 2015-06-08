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
  curvedEdges/BSpline.C
  curvedEdges/CatmullRomSpline.C
  curvedEdges/polyLine.C
  curvedEdges/arcEdge.C
  curvedEdges/curvedEdge.C
  curvedEdges/lineEdge.C
  curvedEdges/polyLineEdge.C
  curvedEdges/lineDivide.C
  curvedEdges/BSplineEdge.C
  curvedEdges/splineEdge.C
  gradingDescriptor/gradingDescriptor.C
  gradingDescriptor/gradingDescriptors.C
  blockDescriptor/blockDescriptor.C
  blockDescriptor/blockDescriptorEdges.C
  block/block.C
  block/blockCreate.C
  blockMesh/blockMesh.C
  blockMesh/blockMeshCreate.C
  blockMesh/blockMeshTopology.C
  blockMesh/blockMeshCheck.C
  blockMesh/blockMeshMerge.C
)

set(LIBRARIES
  libmeshTools
  libdynamicMesh
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/meshTools/include.cmake)
include(../../../src/dynamicMesh/include.cmake)

add_library(libblockMesh ${SOURCES})
set_target_properties(libblockMesh PROPERTIES PREFIX "")

target_link_libraries(libblockMesh ${LIBRARIES})

install(TARGETS libblockMesh DESTINATION lib OPTIONAL)
