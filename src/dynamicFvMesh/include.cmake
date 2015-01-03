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

include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/dynamicFvMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/dynamicInkJetFvMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/dynamicMotionSolverFvMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/dynamicRefineFvMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/include)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/pointPatchFields/derived/solidBodyMotionDisplacement)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/axisRotationMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/linearMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/multiMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/oscillatingLinearMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/oscillatingRotatingMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/rotatingMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/SDA)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/solidBodyMotionFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/solidBodyMotionFvMesh/solidBodyMotionFunctions/tabulated6DoFMotion)
include_directories(${PROJECT_SOURCE_DIR}/src/dynamicFvMesh/staticFvMesh)
