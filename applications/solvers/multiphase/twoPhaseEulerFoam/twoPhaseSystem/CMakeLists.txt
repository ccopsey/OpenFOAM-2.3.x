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
  phaseModel/phaseModel.C
  diameterModels/diameterModel/diameterModel.C
  diameterModels/diameterModel/newDiameterModel.C
  diameterModels/constantDiameter/constantDiameter.C
  diameterModels/isothermalDiameter/isothermalDiameter.C
  diameterModels/IATE/IATE.C
  diameterModels/IATE/IATEsources/IATEsource/IATEsource.C
  diameterModels/IATE/IATEsources/wakeEntrainmentCoalescence/wakeEntrainmentCoalescence.C
  diameterModels/IATE/IATEsources/turbulentBreakUp/turbulentBreakUp.C
  diameterModels/IATE/IATEsources/randomCoalescence/randomCoalescence.C
  BlendedInterfacialModel/blendingMethods/blendingMethod/blendingMethod.C
  BlendedInterfacialModel/blendingMethods/blendingMethod/newBlendingMethod.C
  BlendedInterfacialModel/blendingMethods/noBlending/noBlending.C
  BlendedInterfacialModel/blendingMethods/linear/linear.C
  BlendedInterfacialModel/blendingMethods/hyperbolic/hyperbolic.C
  phasePair/phasePairKey/phasePairKey.C
  phasePair/phasePair/phasePair.C
  phasePair/orderedPhasePair/orderedPhasePair.C
  twoPhaseSystem.C
)

set(LIBRARIES
  libincompressibleTransportModels
  libfluidThermophysicalModels
  libspecie
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(../twoPhaseSystem)
include(../interfacialModels/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/transportModels/incompressible/include.cmake)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../../src/fvOptions/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/sampling/include.cmake)

add_library(libcompressibleTwoPhaseSystem ${SOURCES})
set_target_properties(libcompressibleTwoPhaseSystem PROPERTIES PREFIX "")

target_link_libraries(libcompressibleTwoPhaseSystem ${LIBRARIES})

install(TARGETS libcompressibleTwoPhaseSystem DESTINATION lib OPTIONAL)
