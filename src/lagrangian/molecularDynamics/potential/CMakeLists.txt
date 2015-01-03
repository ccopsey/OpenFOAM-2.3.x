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
  potential/potential.C
  pairPotential/pairPotentialList/pairPotentialList.C
  pairPotential/basic/pairPotential.C
  pairPotential/basic/pairPotentialIO.C
  pairPotential/basic/pairPotentialNew.C
  pairPotential/derived/lennardJones/lennardJones.C
  pairPotential/derived/maitlandSmith/maitlandSmith.C
  pairPotential/derived/azizChen/azizChen.C
  pairPotential/derived/exponentialRepulsion/exponentialRepulsion.C
  pairPotential/derived/coulomb/coulomb.C
  pairPotential/derived/dampedCoulomb/dampedCoulomb.C
  pairPotential/derived/noInteraction/noInteraction.C
  energyScalingFunction/basic/energyScalingFunction.C
  energyScalingFunction/basic/energyScalingFunctionNew.C
  energyScalingFunction/derived/shifted/shifted.C
  energyScalingFunction/derived/shiftedForce/shiftedForce.C
  energyScalingFunction/derived/noScaling/noScaling.C
  energyScalingFunction/derived/sigmoid/sigmoid.C
  energyScalingFunction/derived/doubleSigmoid/doubleSigmoid.C
  tetherPotential/tetherPotentialList/tetherPotentialList.C
  tetherPotential/basic/tetherPotential.C
  tetherPotential/basic/tetherPotentialNew.C
  tetherPotential/derived/harmonicSpring/harmonicSpring.C
  tetherPotential/derived/restrainedHarmonicSpring/restrainedHarmonicSpring.C
  tetherPotential/derived/pitchForkRing/pitchForkRing.C
  electrostaticPotential/electrostaticPotential.C
)

set(LIBRARIES
  libfiniteVolume
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../src/finiteVolume/include.cmake)

add_library(libpotential ${SOURCES})
set_target_properties(libpotential PROPERTIES PREFIX "")

target_link_libraries(libpotential ${LIBRARIES})

install(TARGETS libpotential DESTINATION lib OPTIONAL)
