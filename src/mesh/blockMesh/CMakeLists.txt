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

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/meshTools)
include_directories(../../../src/dynamicMesh)

add_library(libblockMesh ${SOURCES})
set_target_properties(libblockMesh PROPERTIES PREFIX "")

target_link_libraries(libblockMesh ${LIBRARIES})

install(TARGETS libblockMesh DESTINATION lib OPTIONAL)
