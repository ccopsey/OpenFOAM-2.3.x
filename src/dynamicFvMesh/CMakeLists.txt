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
  dynamicFvMesh/dynamicFvMesh.C
  dynamicFvMesh/dynamicFvMeshNew.C
  staticFvMesh/staticFvMesh.C
  dynamicMotionSolverFvMesh/dynamicMotionSolverFvMesh.C
  dynamicInkJetFvMesh/dynamicInkJetFvMesh.C
  dynamicRefineFvMesh/dynamicRefineFvMesh.C
  solidBodyMotionFvMesh/solidBodyMotionFvMesh.C
  solidBodyMotionFvMesh/multiSolidBodyMotionFvMesh.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/solidBodyMotionFunction/solidBodyMotionFunction.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/solidBodyMotionFunction/solidBodyMotionFunctionNew.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/SDA/SDA.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/tabulated6DoFMotion/tabulated6DoFMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/linearMotion/linearMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/rotatingMotion/rotatingMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/axisRotationMotion/axisRotationMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/multiMotion/multiMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/oscillatingLinearMotion/oscillatingLinearMotion.C
  solidBodyMotionFvMesh/solidBodyMotionFunctions/oscillatingRotatingMotion/oscillatingRotatingMotion.C
  solidBodyMotionFvMesh/pointPatchFields/derived/solidBodyMotionDisplacement/solidBodyMotionDisplacementPointPatchVectorField.C
)

set(LIBRARIES
  libtriSurface
  libmeshTools
  libdynamicMesh
  libfiniteVolume
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/triSurface/include.cmake)
include(../../src/meshTools/include.cmake)
include(../../src/dynamicMesh/include.cmake)

add_library(libdynamicFvMesh ${SOURCES})
set_target_properties(libdynamicFvMesh PROPERTIES PREFIX "")

target_link_libraries(libdynamicFvMesh ${LIBRARIES})

install(TARGETS libdynamicFvMesh DESTINATION lib OPTIONAL)
