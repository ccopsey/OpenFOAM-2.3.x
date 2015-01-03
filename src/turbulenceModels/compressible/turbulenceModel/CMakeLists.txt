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
  turbulenceModel.C
  laminar/laminar.C
  derivedFvPatchFields/turbulentHeatFluxTemperature/turbulentHeatFluxTemperatureFvPatchScalarField.C
  derivedFvPatchFields/temperatureCoupledBase/temperatureCoupledBase.C
  derivedFvPatchFields/turbulentTemperatureCoupledBaffleMixed/turbulentTemperatureCoupledBaffleMixedFvPatchScalarField.C
  derivedFvPatchFields/thermalBaffle1D/thermalBaffle1DFvPatchScalarFields.C
  derivedFvPatchFields/totalFlowRateAdvectiveDiffusive/totalFlowRateAdvectiveDiffusiveFvPatchScalarField.C
  derivedFvPatchFields/turbulentTemperatureRadCoupledMixed/turbulentTemperatureRadCoupledMixedFvPatchScalarField.C
  derivedFvPatchFields/externalWallHeatFluxTemperature/externalWallHeatFluxTemperatureFvPatchScalarField.C
  derivedFvPatchFields/wallHeatTransfer/wallHeatTransferFvPatchScalarField.C
  derivedFvPatchFields/externalCoupledTemperatureMixed/externalCoupledTemperatureMixedFvPatchScalarField.C
)

set(LIBRARIES
  libsolidThermo
  libfluidThermophysicalModels
  libspecie
  libfiniteVolume
  libmeshTools
  libsolidSpecie
  libradiationModels
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/meshTools/include.cmake)
include_directories(../../../../src/turbulenceModels)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../src/thermophysicalModels/solidThermo/include.cmake)
include(../../../../src/thermophysicalModels/solidSpecie/include.cmake)

add_library(libcompressibleTurbulenceModel ${SOURCES})
set_target_properties(libcompressibleTurbulenceModel PROPERTIES PREFIX "")

target_link_libraries(libcompressibleTurbulenceModel ${LIBRARIES})

install(TARGETS libcompressibleTurbulenceModel DESTINATION lib OPTIONAL)
