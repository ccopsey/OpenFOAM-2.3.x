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
  attachDetach/attachDetach.C
  attachDetach/attachInterface.C
  attachDetach/detachInterface.C
  attachDetach/attachDetachPointMatchMap.C
  layerAdditionRemoval/layerAdditionRemoval.C
  layerAdditionRemoval/setLayerPairing.C
  layerAdditionRemoval/addCellLayer.C
  layerAdditionRemoval/removeCellLayer.C
  slidingInterface/enrichedPatch/enrichedPatch.C
  slidingInterface/enrichedPatch/enrichedPatchPointMap.C
  slidingInterface/enrichedPatch/enrichedPatchFaces.C
  slidingInterface/enrichedPatch/enrichedPatchPointPoints.C
  slidingInterface/enrichedPatch/enrichedPatchCutFaces.C
  slidingInterface/enrichedPatch/enrichedPatchMasterPoints.C
  polyTopoChange/polyMeshModifier/polyMeshModifier.C
  polyTopoChange/polyMeshModifier/polyMeshModifierNew.C
  polyTopoChange/polyTopoChange/topoAction/topoActions.C
  polyTopoChange/polyTopoChanger/polyTopoChanger.C
  polyTopoChange/polyTopoChange/polyTopoChange.C
  polyTopoChange/polyTopoChange/addPatchCellLayer.C
  polyTopoChange/polyTopoChange/pointEdgeCollapse/pointEdgeCollapse.C
  polyTopoChange/polyTopoChange/edgeCollapser.C
  polyTopoChange/polyTopoChange/faceCollapser.C
  polyTopoChange/polyTopoChange/hexRef8.C
  polyTopoChange/polyTopoChange/removeCells.C
  polyTopoChange/polyTopoChange/removeFaces.C
  polyTopoChange/polyTopoChange/refinementData.C
  polyTopoChange/polyTopoChange/refinementDistanceData.C
  polyTopoChange/polyTopoChange/refinementHistory.C
  polyTopoChange/polyTopoChange/removePoints.C
  polyTopoChange/polyTopoChange/combineFaces.C
  polyTopoChange/polyTopoChange/duplicatePoints.C
  polyTopoChange/polyTopoChange/tetDecomposer.C
  slidingInterface/slidingInterface.C
  slidingInterface/slidingInterfaceProjectPoints.C
  slidingInterface/coupleSlidingInterface.C
  slidingInterface/slidingInterfaceAttachedAddressing.C
  slidingInterface/slidingInterfaceClearCouple.C
  slidingInterface/decoupleSlidingInterface.C
  perfectInterface/perfectInterface.C
  boundaryMesh/boundaryMesh.C
  boundaryPatch/boundaryPatch.C
  setUpdater/setUpdater.C
  meshCut/meshModifiers/boundaryCutter/boundaryCutter.C
  meshCut/meshModifiers/meshCutter/meshCutter.C
  meshCut/meshModifiers/meshCutAndRemove/meshCutAndRemove.C
  meshCut/meshModifiers/undoableMeshCutter/undoableMeshCutter.C
  meshCut/meshModifiers/refinementIterator/refinementIterator.C
  meshCut/meshModifiers/multiDirRefinement/multiDirRefinement.C
  meshCut/cellLooper/cellLooper.C
  meshCut/cellLooper/topoCellLooper.C
  meshCut/cellLooper/geomCellLooper.C
  meshCut/cellLooper/hexCellLooper.C
  meshCut/directions/directions.C
  meshCut/directions/directionInfo/directionInfo.C
  meshCut/edgeVertex/edgeVertex.C
  meshCut/cellCuts/cellCuts.C
  meshCut/splitCell/splitCell.C
  meshCut/refineCell/refineCell.C
  meshCut/wallLayerCells/wallLayerCells.C
  meshCut/wallLayerCells/wallNormalInfo/wallNormalInfo.C
  polyTopoChange/attachPolyTopoChanger/attachPolyTopoChanger.C
  polyTopoChange/repatchPolyTopoChanger/repatchPolyTopoChanger.C
  fvMeshAdder/fvMeshAdder.C
  fvMeshDistribute/fvMeshDistribute.C
  polyMeshAdder/faceCoupleInfo.C
  polyMeshAdder/polyMeshAdder.C
  fvMeshTools/fvMeshTools.C
  motionSmoother/motionSmoother.C
  motionSmoother/motionSmootherAlgo.C
  motionSmoother/motionSmootherAlgoCheck.C
  motionSmoother/motionSmootherData.C
  motionSmoother/polyMeshGeometry/polyMeshGeometry.C
  motionSmoother/badQualityToCell/badQualityToCell.C
  motionSmoother/badQualityToFace/badQualityToFace.C
  motionSolver/motionSolver/motionSolver.C
  motionSolver/displacement/displacementMotionSolver.C
  motionSolver/componentDisplacement/componentDisplacementMotionSolver.C
  motionSolver/velocity/velocityMotionSolver.C
  motionSolver/componentVelocity/componentVelocityMotionSolver.C
  createShellMesh/createShellMesh.C
  extrudePatchMesh/extrudePatchMesh.C
  polyMeshFilter/polyMeshFilterSettings.C
  polyMeshFilter/polyMeshFilter.C
)

set(LIBRARIES
  libfiniteVolume
  libtriSurface
  libextrudeModel
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/meshTools/include.cmake)
include(../../src/triSurface/include.cmake)
include(../../src/mesh/extrudeModel/include.cmake)

add_library(libdynamicMesh ${SOURCES})
set_target_properties(libdynamicMesh PROPERTIES PREFIX "")

target_link_libraries(libdynamicMesh ${LIBRARIES})

install(TARGETS libdynamicMesh DESTINATION lib OPTIONAL)
