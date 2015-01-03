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

include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/autoHexMeshDriver)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/autoHexMeshDriver/layerParameters)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/autoHexMeshDriver/pointData)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/autoHexMeshDriver/refinementParameters)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/autoHexMeshDriver/snapParameters)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/externalDisplacementMeshMover)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/externalDisplacementMeshMover/zeroFixedValue)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/meshRefinement)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/refinementFeatures)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/refinementSurfaces)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/shellSurfaces)
include_directories(${PROJECT_SOURCE_DIR}/src/mesh/autoMesh/autoHexMesh/trackedParticle)
