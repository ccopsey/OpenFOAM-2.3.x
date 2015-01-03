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

include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/attachDetach)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/boundaryMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/boundaryPatch)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/createShellMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/extrudePatchMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/fvMeshAdder)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/fvMeshDistribute)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/fvMeshTools)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/layerAdditionRemoval)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/cellCuts)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/cellLooper)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/directions)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/directions/directionInfo)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/edgeVertex)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/boundaryCutter)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/meshCutAndRemove)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/meshCutter)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/multiDirRefinement)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/refinementIterator)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/meshModifiers/undoableMeshCutter)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/refineCell)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/splitCell)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/wallLayerCells)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/meshCut/wallLayerCells/wallNormalInfo)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSmoother)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSmoother/badQualityToCell)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSmoother/badQualityToFace)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSmoother/polyMeshGeometry)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSolver/componentDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSolver/componentVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSolver/displacement)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSolver/motionSolver)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/motionSolver/velocity)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/perfectInterface)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyMeshAdder)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyMeshFilter)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/attachPolyTopoChanger)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyMeshModifier)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange/addObject)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange/modifyObject)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange/pointEdgeCollapse)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChanger)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange/removeObject)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/polyTopoChange/topoAction)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/polyTopoChange/repatchPolyTopoChanger)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/setUpdater)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/slidingInterface)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicMesh/slidingInterface/enrichedPatch)
