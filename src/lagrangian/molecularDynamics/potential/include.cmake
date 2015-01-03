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

include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/electrostaticPotential)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/basic)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/derived/doubleSigmoid)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/derived/noScaling)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/derived/shifted)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/derived/shiftedForce)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/energyScalingFunction/derived/sigmoid)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/basic)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/azizChen)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/coulomb)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/dampedCoulomb)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/exponentialRepulsion)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/lennardJones)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/maitlandSmith)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/derived/noInteraction)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/pairPotential/pairPotentialList)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/potential)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/tetherPotential/basic)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/tetherPotential/derived/harmonicSpring)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/tetherPotential/derived/pitchForkRing)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/tetherPotential/derived/restrainedHarmonicSpring)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/molecularDynamics/potential/tetherPotential/tetherPotentialList)
