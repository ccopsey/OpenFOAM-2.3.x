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
  DelaunayMeshTools/DelaunayMeshTools.C
  conformalVoronoiMesh/indexedVertex/indexedVertexEnum.C
  conformalVoronoiMesh/indexedCell/indexedCellEnum.C
  conformalVoronoiMesh/conformalVoronoiMesh.C
  conformalVoronoiMesh/conformalVoronoiMeshCalcDualMesh.C
  conformalVoronoiMesh/conformalVoronoiMeshConformToSurface.C
  conformalVoronoiMesh/conformalVoronoiMeshZones.C
  conformalVoronoiMesh/conformalVoronoiMeshIO.C
  conformalVoronoiMesh/conformalVoronoiMeshFeaturePoints.C
  conformalVoronoiMesh/featurePointConformer/pointFeatureEdgesTypes.C
  conformalVoronoiMesh/featurePointConformer/featurePointConformer.C
  conformalVoronoiMesh/featurePointConformer/featurePointConformerSpecialisations.C
  cvControls/cvControls.C
  conformationSurfaces/conformationSurfaces.C
  backgroundMeshDecomposition/backgroundMeshDecomposition.C
  cellShapeControl/cellShapeControl/cellShapeControl.C
  cellShapeControl/cellShapeControlMesh/cellShapeControlMesh.C
  cellShapeControl/cellSizeAndAlignmentControl/cellSizeAndAlignmentControls.C
  cellShapeControl/cellSizeAndAlignmentControl/cellSizeAndAlignmentControl/cellSizeAndAlignmentControl.C
  cellShapeControl/cellSizeAndAlignmentControl/fileControl/fileControl.C
  cellShapeControl/cellSizeAndAlignmentControl/searchableSurfaceControl/searchableSurfaceControl.C
  cellShapeControl/cellAspectRatioControl/cellAspectRatioControl.C
  cellShapeControl/smoothAlignmentSolver/smoothAlignmentSolver.C
  cellShapeControl/controlMeshRefinement/controlMeshRefinement.C
  cellSizeControlSurfaces/cellSizeFunction/cellSizeFunction/cellSizeFunction.C
  cellSizeControlSurfaces/cellSizeFunction/uniform/uniform.C
  cellSizeControlSurfaces/cellSizeFunction/uniformDistance/uniformDistance.C
  cellSizeControlSurfaces/cellSizeFunction/linearDistance/linearDistance.C
  cellSizeControlSurfaces/cellSizeFunction/surfaceOffsetLinearDistance/surfaceOffsetLinearDistance.C
  cellSizeControlSurfaces/cellSizeFunction/linearSpatial/linearSpatial.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/surfaceCellSizeFunction/surfaceCellSizeFunction.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/uniformValue/uniformValue.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/nonUniformField/nonUniformField.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/cellSizeCalculationType/cellSizeCalculationType.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/fieldFromFile/fieldFromFile.C
  cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/automatic/automatic.C
  initialPointsMethod/initialPointsMethod/initialPointsMethod.C
  initialPointsMethod/uniformGrid/uniformGrid.C
  initialPointsMethod/bodyCentredCubic/bodyCentredCubic.C
  initialPointsMethod/faceCentredCubic/faceCentredCubic.C
  initialPointsMethod/pointFile/pointFile.C
  initialPointsMethod/autoDensity/autoDensity.C
  initialPointsMethod/rayShooting/rayShooting.C
  relaxationModel/relaxationModel/relaxationModel.C
  relaxationModel/adaptiveLinear/adaptiveLinear.C
  relaxationModel/rampHoldFall/rampHoldFall.C
  faceAreaWeightModel/faceAreaWeightModel/faceAreaWeightModel.C
  faceAreaWeightModel/piecewiseLinearRamp/piecewiseLinearRamp.C
  searchableSurfaceFeatures/searchableSurfaceFeatures.C
  searchableSurfaceFeatures/searchableBoxFeatures.C
  searchableSurfaceFeatures/searchablePlateFeatures.C
  searchableSurfaceFeatures/triSurfaceMeshFeatures.C
)

set(LIBRARIES
  ${CGAL_LIBRARY}
  ${GMP_LIBRARY}
  ${MPFR_LIBRARY}
  ${BOOST_SYSTEM_LIBRARY}
  ${BOOST_THREAD_LIBRARY}
  libmeshTools
  libedgeMesh
  libfileFormats
  libtriSurface
  libdynamicMesh
  libsurfMesh
  libsampling
  libautoMesh
)

include_directories(.)
include_directories(../../../../../../src/OpenFOAM)
include_directories(../../../../../../src/OSspecific/POSIX)
include_directories(../../../../../../src/finiteVolume)
include_directories(${CGAL_INCLUDE_DIR})
include_directories(${GMP_INCLUDE_DIR})
include_directories(${MPFR_INCLUDE_DIR})
include_directories(${BOOST_INCLUDE_DIR})
include_directories(../../../../../../src/meshTools)
include_directories(../../../../../../src/parallel/decompose/decompositionMethods)
include_directories(../../../../../../src/edgeMesh)
include_directories(../../../../../../src/fileFormats)
include_directories(../../../../../../src/dynamicMesh)
include_directories(../../../../../../src/surfMesh)
include_directories(../../../../../../src/triSurface)
include_directories(../../../../../../src/sampling)
include_directories(../../../../../../src/mesh/autoMesh)
include_directories(PrintTable)
include_directories(../vectorTools)

add_library(libconformalVoronoiMesh ${SOURCES})
set_target_properties(libconformalVoronoiMesh PROPERTIES PREFIX "")

target_link_libraries(libconformalVoronoiMesh ${LIBRARIES})

install(TARGETS libconformalVoronoiMesh DESTINATION lib OPTIONAL)
