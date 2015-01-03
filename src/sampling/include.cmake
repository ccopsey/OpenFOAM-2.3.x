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

include_directories(${PROJECT_SOURCE_DIR}/src/sampling/cuttingPlane)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/graphField)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/meshToMeshInterpolation/meshToMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/meshToMeshInterpolation/meshToMesh/calcMethod/cellVolumeWeight)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/meshToMeshInterpolation/meshToMesh/calcMethod/direct)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/meshToMeshInterpolation/meshToMesh/calcMethod/mapNearest)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/meshToMeshInterpolation/meshToMesh/calcMethod/meshToMeshMethod)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/probes)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/probes/probesFunctionObject)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/array)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/circle)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/cloud)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/face)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/midPoint)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/midPointAndFace)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/patchCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/patchSeed)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/polyLine)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/sampledSet)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/sampledSets)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/sampledSetsFunctionObject)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/triSurfaceMeshPointSet)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSet/uniform)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/distanceSurface)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/isoSurface)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledCuttingPlane)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledPatch)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledPatchInternalField)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledPlane)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledSurface)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledSurfaces)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledSurfacesFunctionObject)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/sampledTriSurfaceMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/thresholdCellFaces)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/dx)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/ensight)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/foamFile)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/nastran)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/proxy)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/raw)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/starcd)
include_directories(${PROJECT_SOURCE_DIR}/src/sampling/sampledSurface/writers/vtk)
