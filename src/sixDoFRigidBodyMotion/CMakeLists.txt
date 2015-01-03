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
  sixDoFRigidBodyMotion/sixDoFRigidBodyMotion.C
  sixDoFRigidBodyMotion/sixDoFRigidBodyMotionIO.C
  sixDoFRigidBodyMotion/sixDoFRigidBodyMotionState.C
  sixDoFRigidBodyMotion/sixDoFRigidBodyMotionStateIO.C
  sixDoFRigidBodyMotion/restraints/sixDoFRigidBodyMotionRestraint/sixDoFRigidBodyMotionRestraint.C
  sixDoFRigidBodyMotion/restraints/sixDoFRigidBodyMotionRestraint/sixDoFRigidBodyMotionRestraintNew.C
  sixDoFRigidBodyMotion/restraints/linearAxialAngularSpring/linearAxialAngularSpring.C
  sixDoFRigidBodyMotion/restraints/linearSpring/linearSpring.C
  sixDoFRigidBodyMotion/restraints/sphericalAngularSpring/sphericalAngularSpring.C
  sixDoFRigidBodyMotion/restraints/tabulatedAxialAngularSpring/tabulatedAxialAngularSpring.C
  sixDoFRigidBodyMotion/restraints/linearDamper/linearDamper.C
  sixDoFRigidBodyMotion/restraints/sphericalAngularDamper/sphericalAngularDamper.C
  sixDoFRigidBodyMotion/constraints/sixDoFRigidBodyMotionConstraint/sixDoFRigidBodyMotionConstraint.C
  sixDoFRigidBodyMotion/constraints/sixDoFRigidBodyMotionConstraint/sixDoFRigidBodyMotionConstraintNew.C
  sixDoFRigidBodyMotion/constraints/axis/sixDoFRigidBodyMotionAxisConstraint.C
  sixDoFRigidBodyMotion/constraints/line/sixDoFRigidBodyMotionLineConstraint.C
  sixDoFRigidBodyMotion/constraints/orientation/sixDoFRigidBodyMotionOrientationConstraint.C
  sixDoFRigidBodyMotion/constraints/plane/sixDoFRigidBodyMotionPlaneConstraint.C
  sixDoFRigidBodyMotion/constraints/point/sixDoFRigidBodyMotionPointConstraint.C
  pointPatchFields/derived/sixDoFRigidBodyDisplacement/sixDoFRigidBodyDisplacementPointPatchVectorField.C
  pointPatchFields/derived/uncoupledSixDoFRigidBodyDisplacement/uncoupledSixDoFRigidBodyDisplacementPointPatchVectorField.C
  sixDoFRigidBodyMotionSolver/sixDoFRigidBodyMotionSolver.C
  sixDoFRigidBodyMotionSolver/externalPointEdgePoint.C
  sixDoFRigidBodyMotionSolver/pointPatchDist.C
)

set(LIBRARIES
  libforces
  libmeshTools
  libfileFormats
  libdynamicMesh
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/meshTools/include.cmake)
include(../../src/postProcessing/functionObjects/forces/include.cmake)
include(../../src/fileFormats/include.cmake)
include(../../src/dynamicMesh/include.cmake)

add_library(libsixDoFRigidBodyMotion ${SOURCES})
set_target_properties(libsixDoFRigidBodyMotion PROPERTIES PREFIX "")

target_link_libraries(libsixDoFRigidBodyMotion ${LIBRARIES})

install(TARGETS libsixDoFRigidBodyMotion DESTINATION lib OPTIONAL)
