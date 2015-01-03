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
  dragModels/dragModel/dragModel.C
  dragModels/dragModel/newDragModel.C
  dragModels/segregated/segregated.C
  dragModels/Ergun/Ergun.C
  dragModels/Gibilaro/Gibilaro.C
  dragModels/GidaspowErgunWenYu/GidaspowErgunWenYu.C
  dragModels/GidaspowSchillerNaumann/GidaspowSchillerNaumann.C
  dragModels/Lain/Lain.C
  dragModels/SchillerNaumann/SchillerNaumann.C
  dragModels/SyamlalOBrien/SyamlalOBrien.C
  dragModels/TomiyamaCorrelated/TomiyamaCorrelated.C
  dragModels/TomiyamaAnalytic/TomiyamaAnalytic.C
  dragModels/WenYu/WenYu.C
  swarmCorrections/swarmCorrection/swarmCorrection.C
  swarmCorrections/swarmCorrection/newSwarmCorrection.C
  swarmCorrections/noSwarm/noSwarm.C
  swarmCorrections/TomiyamaSwarm/TomiyamaSwarm.C
  liftModels/liftModel/liftModel.C
  liftModels/liftModel/newLiftModel.C
  liftModels/noLift/noLift.C
  liftModels/constantLiftCoefficient/constantLiftCoefficient.C
  liftModels/Moraga/Moraga.C
  liftModels/LegendreMagnaudet/LegendreMagnaudet.C
  liftModels/TomiyamaLift/TomiyamaLift.C
  heatTransferModels/heatTransferModel/heatTransferModel.C
  heatTransferModels/heatTransferModel/newHeatTransferModel.C
  heatTransferModels/RanzMarshall/RanzMarshall.C
  virtualMassModels/virtualMassModel/virtualMassModel.C
  virtualMassModels/virtualMassModel/newVirtualMassModel.C
  virtualMassModels/noVirtualMass/noVirtualMass.C
  virtualMassModels/constantVirtualMassCoefficient/constantVirtualMassCoefficient.C
  virtualMassModels/Lamb/Lamb.C
  wallLubricationModels/wallLubricationModel/wallLubricationModel.C
  wallLubricationModels/wallLubricationModel/newWallLubricationModel.C
  wallLubricationModels/noWallLubrication/noWallLubrication.C
  wallLubricationModels/Antal/Antal.C
  wallLubricationModels/Frank/Frank.C
  wallLubricationModels/TomiyamaWallLubrication/TomiyamaWallLubrication.C
  turbulentDispersionModels/turbulentDispersionModel/turbulentDispersionModel.C
  turbulentDispersionModels/turbulentDispersionModel/newTurbulentDispersionModel.C
  turbulentDispersionModels/noTurbulentDispersion/noTurbulentDispersion.C
  turbulentDispersionModels/constantTurbulentDispersionCoefficient/constantTurbulentDispersionCoefficient.C
  turbulentDispersionModels/Burns/Burns.C
  turbulentDispersionModels/Gosman/Gosman.C
  aspectRatioModels/aspectRatioModel/aspectRatioModel.C
  aspectRatioModels/aspectRatioModel/newAspectRatioModel.C
  aspectRatioModels/constantAspectRatio/constantAspectRatio.C
  aspectRatioModels/TomiyamaAspectRatio/TomiyamaAspectRatio.C
  aspectRatioModels/VakhrushevEfremov/VakhrushevEfremov.C
  aspectRatioModels/Wellek/Wellek.C
  wallDependentModel/wallDependentModel.C
)

set(LIBRARIES
  libcompressibleTwoPhaseSystem
  libfluidThermophysicalModels
  libspecie
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include_directories(../../../../../src/transportModels/incompressible/transportModel)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../twoPhaseSystem/include.cmake)

add_library(libcompressibleEulerianInterfacialModels ${SOURCES})
set_target_properties(libcompressibleEulerianInterfacialModels PROPERTIES PREFIX "")

target_link_libraries(libcompressibleEulerianInterfacialModels ${LIBRARIES})

install(TARGETS libcompressibleEulerianInterfacialModels DESTINATION lib OPTIONAL)
