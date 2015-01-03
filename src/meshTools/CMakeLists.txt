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
  cellClassification/cellClassification.C
  cellClassification/cellInfo.C
  cellQuality/cellQuality.C
  cellDist/cellDistFuncs.C
  cellDist/patchWave/patchWave.C
  cellDist/wallPoint/wallPoint.C
  cellFeatures/cellFeatures.C
  coordinateSystems/coordinateSystem.C
  coordinateSystems/coordinateSystemNew.C
  coordinateSystems/coordinateSystems.C
  coordinateSystems/cylindricalCS.C
  coordinateSystems/cartesianCS.C
  coordinateSystems/coordinateRotation/axesRotation.C
  coordinateSystems/coordinateRotation/coordinateRotation.C
  coordinateSystems/coordinateRotation/coordinateRotationNew.C
  coordinateSystems/coordinateRotation/EulerCoordinateRotation.C
  coordinateSystems/coordinateRotation/STARCDCoordinateRotation.C
  coordinateSystems/coordinateRotation/localAxesRotation.C
  edgeFaceCirculator/edgeFaceCirculator.C
  polyMeshZipUpCells/polyMeshZipUpCells.C
  primitiveMeshGeometry/primitiveMeshGeometry.C
  meshSearch/meshSearch.C
  meshSearch/meshSearchFACECENTRETETSMeshObject.C
  meshSearch/meshSearchMeshObject.C
  meshTools/meshTools.C
  algorithms/PointEdgeWave/PointEdgeWaveName.C
  algorithms/PointEdgeWave/pointEdgePoint.C
  algorithms/PatchEdgeFaceWave/PatchEdgeFaceWaveName.C
  algorithms/PatchEdgeFaceWave/patchEdgeFaceInfo.C
  algorithms/PatchEdgeFaceWave/patchPatchDist.C
  algorithms/PatchEdgeFaceWave/patchEdgeFaceRegion.C
  algorithms/PatchEdgeFaceWave/patchEdgeFaceRegions.C
  algorithms/MeshWave/MeshWaveName.C
  algorithms/MeshWave/FaceCellWaveName.C
  regionSplit/regionSplit.C
  regionSplit/localPointRegion.C
  indexedOctree/treeDataEdge.C
  indexedOctree/treeDataFace.C
  indexedOctree/treeDataPoint.C
  indexedOctree/treeDataPrimitivePatchName.C
  indexedOctree/treeDataTriSurface.C
  searchableSurface/searchableBox.C
  searchableSurface/searchableCylinder.C
  searchableSurface/searchableDisk.C
  searchableSurface/searchablePlane.C
  searchableSurface/searchablePlate.C
  searchableSurface/searchableSphere.C
  searchableSurface/searchableSurface.C
  searchableSurface/searchableSurfaceCollection.C
  searchableSurface/searchableSurfaces.C
  searchableSurface/searchableSurfacesQueries.C
  searchableSurface/searchableSurfaceWithGaps.C
  searchableSurface/triSurfaceMesh.C
  searchableSurface/closedTriSurfaceMesh.C
  sets/topoSets/cellSet.C
  sets/topoSets/topoSet.C
  sets/topoSets/faceSet.C
  sets/topoSets/pointSet.C
  sets/topoSets/cellZoneSet.C
  sets/topoSets/faceZoneSet.C
  sets/topoSets/pointZoneSet.C
  sets/topoSetSource/topoSetSource.C
  sets/cellSources/faceToCell/faceToCell.C
  sets/cellSources/fieldToCell/fieldToCell.C
  sets/cellSources/pointToCell/pointToCell.C
  sets/cellSources/shapeToCell/shapeToCell.C
  sets/cellSources/boxToCell/boxToCell.C
  sets/cellSources/regionToCell/regionToCell.C
  sets/cellSources/rotatedBoxToCell/rotatedBoxToCell.C
  sets/cellSources/labelToCell/labelToCell.C
  sets/cellSources/surfaceToCell/surfaceToCell.C
  sets/cellSources/cellToCell/cellToCell.C
  sets/cellSources/nearestToCell/nearestToCell.C
  sets/cellSources/nbrToCell/nbrToCell.C
  sets/cellSources/zoneToCell/zoneToCell.C
  sets/cellSources/sphereToCell/sphereToCell.C
  sets/cellSources/cylinderToCell/cylinderToCell.C
  sets/cellSources/faceZoneToCell/faceZoneToCell.C
  sets/cellSources/cylinderAnnulusToCell/cylinderAnnulusToCell.C
  sets/cellSources/targetVolumeToCell/targetVolumeToCell.C
  sets/faceSources/faceToFace/faceToFace.C
  sets/faceSources/labelToFace/labelToFace.C
  sets/faceSources/cellToFace/cellToFace.C
  sets/faceSources/normalToFace/normalToFace.C
  sets/faceSources/pointToFace/pointToFace.C
  sets/faceSources/patchToFace/patchToFace.C
  sets/faceSources/boundaryToFace/boundaryToFace.C
  sets/faceSources/zoneToFace/zoneToFace.C
  sets/faceSources/boxToFace/boxToFace.C
  sets/faceSources/regionToFace/regionToFace.C
  sets/pointSources/labelToPoint/labelToPoint.C
  sets/pointSources/pointToPoint/pointToPoint.C
  sets/pointSources/cellToPoint/cellToPoint.C
  sets/pointSources/faceToPoint/faceToPoint.C
  sets/pointSources/boxToPoint/boxToPoint.C
  sets/pointSources/surfaceToPoint/surfaceToPoint.C
  sets/pointSources/zoneToPoint/zoneToPoint.C
  sets/pointSources/nearestToPoint/nearestToPoint.C
  sets/faceZoneSources/faceZoneToFaceZone/faceZoneToFaceZone.C
  sets/faceZoneSources/setsToFaceZone/setsToFaceZone.C
  sets/faceZoneSources/setToFaceZone/setToFaceZone.C
  sets/faceZoneSources/setAndNormalToFaceZone/setAndNormalToFaceZone.C
  sets/faceZoneSources/searchableSurfaceToFaceZone/searchableSurfaceToFaceZone.C
  sets/cellZoneSources/setToCellZone/setToCellZone.C
  sets/pointZoneSources/setToPointZone/setToPointZone.C
  momentOfInertia/momentOfInertia.C
  surfaceSets/surfaceSets.C
  triSurface/orientedSurface/orientedSurface.C
  triSurface/surfaceLocation/surfaceLocation.C
  triSurface/booleanOps/surfaceIntersection/surfaceIntersection.C
  triSurface/booleanOps/surfaceIntersection/surfaceIntersectionFuncs.C
  triSurface/booleanOps/surfaceIntersection/edgeIntersections.C
  triSurface/booleanOps/booleanSurface/booleanSurface.C
  triSurface/booleanOps/intersectedSurface/intersectedSurface.C
  triSurface/booleanOps/intersectedSurface/edgeSurface.C
  triSurface/triSurfaceSearch/triSurfaceSearch.C
  triSurface/triSurfaceSearch/triSurfaceRegionSearch.C
  triSurface/triangleFuncs/triangleFuncs.C
  triSurface/surfaceFeatures/surfaceFeatures.C
  triSurface/triSurfaceTools/triSurfaceTools.C
  triSurface/triSurfaceTools/geompack/geompack.C
  triSurface/triSurfaceTools/pointToPointPlanarInterpolation.C
  twoDPointCorrector/twoDPointCorrector.C
  AMIInterpolation/AMIInterpolation/AMIInterpolationName.C
  AMIInterpolation/AMIInterpolation/AMIPatchToPatchInterpolation.C
  AMIInterpolation/faceAreaIntersect/faceAreaIntersect.C
  AMIInterpolation/GAMG/interfaces/cyclicAMIGAMGInterface/cyclicAMIGAMGInterface.C
  AMIInterpolation/GAMG/interfaceFields/cyclicAMIGAMGInterfaceField/cyclicAMIGAMGInterfaceField.C
  AMIInterpolation/GAMG/interfaces/cyclicACMIGAMGInterface/cyclicACMIGAMGInterface.C
  AMIInterpolation/GAMG/interfaceFields/cyclicACMIGAMGInterfaceField/cyclicACMIGAMGInterfaceField.C
  AMIInterpolation/patches/cyclicAMI/cyclicAMILduInterfaceField/cyclicAMILduInterface.C
  AMIInterpolation/patches/cyclicAMI/cyclicAMILduInterfaceField/cyclicAMILduInterfaceField.C
  AMIInterpolation/patches/cyclicAMI/cyclicAMIPolyPatch/cyclicAMIPolyPatch.C
  AMIInterpolation/patches/cyclicAMI/cyclicAMIPointPatch/cyclicAMIPointPatch.C
  AMIInterpolation/patches/cyclicAMI/cyclicAMIPointPatchField/cyclicAMIPointPatchFields.C
  AMIInterpolation/patches/cyclicACMI/cyclicACMILduInterfaceField/cyclicACMILduInterface.C
  AMIInterpolation/patches/cyclicACMI/cyclicACMILduInterfaceField/cyclicACMILduInterfaceField.C
  AMIInterpolation/patches/cyclicACMI/cyclicACMIPolyPatch/cyclicACMIPolyPatch.C
  AMIInterpolation/patches/cyclicACMI/cyclicACMIPointPatch/cyclicACMIPointPatch.C
  AMIInterpolation/patches/cyclicACMI/cyclicACMIPointPatchField/cyclicACMIPointPatchFields.C
  mappedPatches/mappedPolyPatch/mappedPatchBase.C
  mappedPatches/mappedPolyPatch/mappedPolyPatch.C
  mappedPatches/mappedPolyPatch/mappedWallPolyPatch.C
  mappedPatches/mappedPolyPatch/mappedVariableThicknessWallPolyPatch.C
  mappedPatches/mappedPointPatch/mappedPointPatch.C
  mappedPatches/mappedPointPatch/mappedWallPointPatch.C
  meshStructure/meshStructure.C
  meshStructure/topoDistanceData.C
  meshStructure/pointTopoDistanceData.C
  regionCoupled/patches/regionCoupledPolyPatch/regionCoupledBase.C
  regionCoupled/patches/regionCoupledPolyPatch/regionCoupledPolyPatch.C
  regionCoupled/patches/regionCoupledPolyPatch/regionCoupledWallPolyPatch.C
  regionCoupled/patches/regionCoupledLduInterface/regionCoupledLduInterface.C
  regionCoupled/patches/regionCoupledPointPatch/regionCoupledPointPatch.C
  regionCoupled/patches/regionCoupledPointPatch/regionCoupledWallPointPatch.C
  regionCoupled/GAMG/interfaces/regionCoupledGAMGInterface/regionCoupledBaseGAMGInterface.C
  regionCoupled/GAMG/interfaces/regionCoupledGAMGInterface/regionCoupledGAMGInterface.C
  regionCoupled/GAMG/interfaces/regionCoupledGAMGInterface/regionCoupledWallGAMGInterface.C
  regionCoupled/GAMG/interfaceFields/regionCoupledGAMGInterfaceField/regionCoupledGAMGInterfaceField.C
  regionCoupled/GAMG/interfaceFields/regionCoupledGAMGInterfaceField/regionCoupledWallGAMGInterfaceField.C
  tetOverlapVolume/tetOverlapVolume.C
)

set(LIBRARIES
  libtriSurface
  libsurfMesh
  libfileFormats
)

include_directories(.)
include_directories(../../src/OpenFOAM)
include_directories(../../src/OSspecific/POSIX)
include_directories(../../src/triSurface)
include_directories(../../src/surfMesh)
include_directories(../../src/fileFormats)

add_library(libmeshTools ${SOURCES})
set_target_properties(libmeshTools PROPERTIES PREFIX "")

target_link_libraries(libmeshTools ${LIBRARIES})

install(TARGETS libmeshTools DESTINATION lib OPTIONAL)
