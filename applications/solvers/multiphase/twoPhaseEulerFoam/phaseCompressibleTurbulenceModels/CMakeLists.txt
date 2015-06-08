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
  phaseCompressibleTurbulenceModels.C
  phasePressureModel/phasePressureModel.C
  kineticTheoryModels/kineticTheoryModel/kineticTheoryModel.C
  kineticTheoryModels/viscosityModel/viscosityModel/viscosityModel.C
  kineticTheoryModels/viscosityModel/viscosityModel/newViscosityModel.C
  kineticTheoryModels/viscosityModel/Gidaspow/GidaspowViscosity.C
  kineticTheoryModels/viscosityModel/Syamlal/SyamlalViscosity.C
  kineticTheoryModels/viscosityModel/HrenyaSinclair/HrenyaSinclairViscosity.C
  kineticTheoryModels/viscosityModel/none/noneViscosity.C
  kineticTheoryModels/conductivityModel/conductivityModel/conductivityModel.C
  kineticTheoryModels/conductivityModel/conductivityModel/newConductivityModel.C
  kineticTheoryModels/conductivityModel/Gidaspow/GidaspowConductivity.C
  kineticTheoryModels/conductivityModel/Syamlal/SyamlalConductivity.C
  kineticTheoryModels/conductivityModel/HrenyaSinclair/HrenyaSinclairConductivity.C
  kineticTheoryModels/radialModel/radialModel/radialModel.C
  kineticTheoryModels/radialModel/radialModel/newRadialModel.C
  kineticTheoryModels/radialModel/CarnahanStarling/CarnahanStarlingRadial.C
  kineticTheoryModels/radialModel/LunSavage/LunSavageRadial.C
  kineticTheoryModels/radialModel/SinclairJackson/SinclairJacksonRadial.C
  kineticTheoryModels/granularPressureModel/granularPressureModel/granularPressureModel.C
  kineticTheoryModels/granularPressureModel/granularPressureModel/newGranularPressureModel.C
  kineticTheoryModels/granularPressureModel/Lun/LunPressure.C
  kineticTheoryModels/granularPressureModel/SyamlalRogersOBrien/SyamlalRogersOBrienPressure.C
  kineticTheoryModels/frictionalStressModel/frictionalStressModel/frictionalStressModel.C
  kineticTheoryModels/frictionalStressModel/frictionalStressModel/newFrictionalStressModel.C
  kineticTheoryModels/frictionalStressModel/JohnsonJackson/JohnsonJacksonFrictionalStress.C
  kineticTheoryModels/frictionalStressModel/Schaeffer/SchaefferFrictionalStress.C
  kineticTheoryModels/derivedFvPatchFields/JohnsonJacksonParticleTheta/JohnsonJacksonParticleThetaFvPatchScalarField.C
  kineticTheoryModels/derivedFvPatchFields/JohnsonJacksonParticleSlip/JohnsonJacksonParticleSlipFvPatchVectorField.C
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include(../twoPhaseSystem/include.cmake)
include(../interfacialModels/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include_directories(../../../../../src/transportModels/incompressible/transportModel)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../../src/meshTools/include.cmake)

add_library(libphaseCompressibleTurbulenceModels ${SOURCES})
set_target_properties(libphaseCompressibleTurbulenceModels PROPERTIES PREFIX "")

install(TARGETS libphaseCompressibleTurbulenceModels DESTINATION lib OPTIONAL)
