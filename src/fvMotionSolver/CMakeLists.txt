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
  fvMotionSolvers/fvMotionSolverCore/fvMotionSolverCore.C
  fvMotionSolvers/displacement/SBRStress/displacementSBRStressFvMotionSolver.C
  fvMotionSolvers/displacement/laplacian/displacementLaplacianFvMotionSolver.C
  fvMotionSolvers/displacement/interpolation/displacementInterpolationMotionSolver.C
  fvMotionSolvers/displacement/layeredSolver/displacementLayeredMotionMotionSolver.C
  fvMotionSolvers/displacement/layeredSolver/pointEdgeStructuredWalk.C
  fvMotionSolvers/componentDisplacement/componentLaplacian/displacementComponentLaplacianFvMotionSolver.C
  fvMotionSolvers/velocity/laplacian/velocityLaplacianFvMotionSolver.C
  fvMotionSolvers/componentVelocity/componentLaplacian/velocityComponentLaplacianFvMotionSolver.C
  motionDiffusivity/motionDiffusivity/motionDiffusivity.C
  motionDiffusivity/uniform/uniformDiffusivity.C
  motionDiffusivity/inverseDistance/inverseDistanceDiffusivity.C
  motionDiffusivity/inverseFaceDistance/inverseFaceDistanceDiffusivity.C
  motionDiffusivity/inversePointDistance/inversePointDistanceDiffusivity.C
  motionDiffusivity/inverseVolume/inverseVolumeDiffusivity.C
  motionDiffusivity/directional/directionalDiffusivity.C
  motionDiffusivity/motionDirectional/motionDirectionalDiffusivity.C
  motionDiffusivity/file/fileDiffusivity.C
  motionDiffusivity/manipulators/quadratic/quadraticDiffusivity.C
  motionDiffusivity/manipulators/exponential/exponentialDiffusivity.C
  fvPatchFields/derived/cellMotion/cellMotionFvPatchFields.C
  fvPatchFields/derived/surfaceSlipDisplacement/surfaceSlipDisplacementFvPatchFields.C
  pointPatchFields/derived/oscillatingVelocity/oscillatingVelocityPointPatchVectorField.C
  pointPatchFields/derived/angularOscillatingVelocity/angularOscillatingVelocityPointPatchVectorField.C
  pointPatchFields/derived/oscillatingDisplacement/oscillatingDisplacementPointPatchVectorField.C
  pointPatchFields/derived/angularOscillatingDisplacement/angularOscillatingDisplacementPointPatchVectorField.C
  pointPatchFields/derived/surfaceSlipDisplacement/surfaceSlipDisplacementPointPatchVectorField.C
  pointPatchFields/derived/surfaceDisplacement/surfaceDisplacementPointPatchVectorField.C
  pointPatchFields/derived/waveDisplacement/waveDisplacementPointPatchVectorField.C
  pointPatchFields/derived/timeVaryingMappedFixedValue/timeVaryingMappedFixedValuePointPatchFields.C
  pointPatchFields/derived/uniformInterpolatedDisplacement/uniformInterpolatedDisplacementPointPatchVectorField.C
)

set(LIBRARIES
  libtriSurface
  libmeshTools
  libdynamicMesh
  libfiniteVolume
  libfileFormats
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/triSurface/include.cmake)
include(../../src/meshTools/include.cmake)
include(../../src/dynamicMesh/include.cmake)
include(../../src/fileFormats/include.cmake)
include(../../src/postProcessing/functionObjects/forces/include.cmake)

add_library(libfvMotionSolvers ${SOURCES})
set_target_properties(libfvMotionSolvers PROPERTIES PREFIX "")

target_link_libraries(libfvMotionSolvers ${LIBRARIES})

install(TARGETS libfvMotionSolvers DESTINATION lib OPTIONAL)
