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
  autoHexMesh/autoHexMeshDriver/autoLayerDriver.C
  autoHexMesh/autoHexMeshDriver/autoSnapDriver.C
  autoHexMesh/autoHexMeshDriver/autoSnapDriverFeature.C
  autoHexMesh/autoHexMeshDriver/autoRefineDriver.C
  autoHexMesh/autoHexMeshDriver/layerParameters/layerParameters.C
  autoHexMesh/autoHexMeshDriver/refinementParameters/refinementParameters.C
  autoHexMesh/autoHexMeshDriver/snapParameters/snapParameters.C
  autoHexMesh/autoHexMeshDriver/pointData/pointData.C
  autoHexMesh/meshRefinement/meshRefinementBaffles.C
  autoHexMesh/meshRefinement/meshRefinement.C
  autoHexMesh/meshRefinement/meshRefinementMerge.C
  autoHexMesh/meshRefinement/meshRefinementProblemCells.C
  autoHexMesh/meshRefinement/meshRefinementRefine.C
  autoHexMesh/meshRefinement/patchFaceOrientation.C
  autoHexMesh/refinementFeatures/refinementFeatures.C
  autoHexMesh/refinementSurfaces/surfaceZonesInfo.C
  autoHexMesh/refinementSurfaces/refinementSurfaces.C
  autoHexMesh/shellSurfaces/shellSurfaces.C
  autoHexMesh/trackedParticle/trackedParticle.C
  autoHexMesh/trackedParticle/trackedParticleCloud.C
  autoHexMesh/externalDisplacementMeshMover/displacementMeshMoverMotionSolver.C
  autoHexMesh/externalDisplacementMeshMover/externalDisplacementMeshMover.C
  autoHexMesh/externalDisplacementMeshMover/medialAxisMeshMover.C
  autoHexMesh/externalDisplacementMeshMover/zeroFixedValue/zeroFixedValuePointPatchFields.C
)

set(LIBRARIES
  libdynamicMesh
  libfiniteVolume
  liblagrangian
  libmeshTools
  libfileFormats
  libedgeMesh
  libsurfMesh
  libtriSurface
  libdistributed
)

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/finiteVolume)
include_directories(../../../src/parallel/decompose/decompositionMethods)
include_directories(../../../src/dynamicMesh)
include_directories(../../../src/lagrangian/basic)
include_directories(../../../src/meshTools)
include_directories(../../../src/fileFormats)
include_directories(../../../src/edgeMesh)
include_directories(../../../src/surfMesh)
include_directories(../../../src/triSurface)

add_library(libautoMesh ${SOURCES})
set_target_properties(libautoMesh PROPERTIES PREFIX "")

target_link_libraries(libautoMesh ${LIBRARIES})

install(TARGETS libautoMesh DESTINATION lib OPTIONAL)
