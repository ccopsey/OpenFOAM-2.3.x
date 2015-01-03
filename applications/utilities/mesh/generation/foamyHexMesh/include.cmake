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

include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/.)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/cellSizeAndAlignmentGrid)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/backgroundMeshDecomposition)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellAspectRatioControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellShapeControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellShapeControlMesh)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellSizeAndAlignmentControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellSizeAndAlignmentControl/cellSizeAndAlignmentControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellSizeAndAlignmentControl/fileControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/cellSizeAndAlignmentControl/searchableSurfaceControl)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/controlMeshRefinement)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellShapeControl/smoothAlignmentSolver)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/cellSizeFunction)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/linearDistance)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/linearSpatial)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/surfaceOffsetLinearDistance)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/uniform)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/cellSizeFunction/uniformDistance)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/automatic)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/cellSizeCalculationType)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/cellSizeCalculationType/fieldFromFile)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/nonUniformField)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/surfaceCellSizeFunction)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cellSizeControlSurfaces/surfaceCellSizeFunction/uniformValue)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/conformalVoronoiMesh)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/conformalVoronoiMesh/featurePointConformer)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/conformalVoronoiMesh/indexedCell)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/conformalVoronoiMesh/indexedVertex)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/conformationSurfaces)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/cvControls)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/DelaunayMesh)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/DelaunayMeshTools)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/faceAreaWeightModel/faceAreaWeightModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/faceAreaWeightModel/piecewiseLinearRamp)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/autoDensity)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/bodyCentredCubic)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/faceCentredCubic)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/initialPointsMethod)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/pointFile)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/rayShooting)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/initialPointsMethod/uniformGrid)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/pointPairs)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/PrintTable)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/relaxationModel/adaptiveLinear)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/relaxationModel/rampHoldFall)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/relaxationModel/relaxationModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/conformalVoronoiMesh/searchableSurfaceFeatures)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/foamyHexMeshBackgroundMesh)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/foamyHexMeshSurfaceSimplify)
include_directories(${PROJECT_SOURCE_DIR}/applications/utilities/mesh/generation/foamyHexMesh/vectorTools)
