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

include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/componentDisplacement/componentLaplacian)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/componentVelocity/componentLaplacian)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/displacement/interpolation)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/displacement/laplacian)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/displacement/layeredSolver)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/displacement/SBRStress)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/fvMotionSolverCore)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvMotionSolvers/velocity/laplacian)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvPatchFields/derived/cellMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/fvPatchFields/derived/surfaceSlipDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/directional)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/file)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/inverseDistance)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/inverseFaceDistance)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/inversePointDistance)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/inverseVolume)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/manipulators/exponential)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/manipulators/quadratic)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/motionDiffusivity)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/motionDirectional)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/motionDiffusivity/uniform)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/angularOscillatingDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/angularOscillatingVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/oscillatingDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/oscillatingVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/surfaceDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/surfaceSlipDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/timeVaryingMappedFixedValue)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/uniformInterpolatedDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/fvMotionSolver/pointPatchFields/derived/waveDisplacement)
