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
  fvOptions/fvOption.C
  fvOptions/fvOptionIO.C
  fvOptions/fvOptionList.C
  fvOptions/fvIOoptionList.C
  sources/general/codedSource/codedSource.C
  sources/general/semiImplicitSource/semiImplicitSource.C
  sources/derived/actuationDiskSource/actuationDiskSource.C
  sources/derived/effectivenessHeatExchangerSource/effectivenessHeatExchangerSource.C
  sources/derived/explicitPorositySource/explicitPorositySource.C
  sources/derived/MRFSource/MRFSource.C
  sources/derived/pressureGradientExplicitSource/pressureGradientExplicitSource.C
  sources/derived/pressureGradientExplicitSource/pressureGradientExplicitSourceIO.C
  sources/derived/radialActuationDiskSource/radialActuationDiskSource.C
  sources/derived/rotorDiskSource/rotorDiskSource.C
  sources/derived/rotorDiskSource/bladeModel/bladeModel.C
  sources/derived/rotorDiskSource/profileModel/profileModel.C
  sources/derived/rotorDiskSource/profileModel/profileModelList.C
  sources/derived/rotorDiskSource/profileModel/lookup/lookupProfile.C
  sources/derived/rotorDiskSource/profileModel/series/seriesProfile.C
  sources/derived/rotorDiskSource/trimModel/trimModel/trimModel.C
  sources/derived/rotorDiskSource/trimModel/trimModel/trimModelNew.C
  sources/derived/rotorDiskSource/trimModel/fixed/fixedTrim.C
  sources/derived/rotorDiskSource/trimModel/targetCoeff/targetCoeffTrim.C
  sources/derived/solidificationMeltingSource/solidificationMeltingSource.C
  sources/derived/solidificationMeltingSource/solidificationMeltingSourceIO.C
  sources/interRegion/interRegionHeatTransferModel/constantHeatTransfer/constantHeatTransfer.C
  sources/interRegion/interRegionHeatTransferModel/interRegionHeatTransferModel/interRegionHeatTransferModel.C
  sources/interRegion/interRegionHeatTransferModel/tabulatedHeatTransfer/tabulatedHeatTransfer.C
  sources/interRegion/interRegionHeatTransferModel/variableHeatTransfer/variableHeatTransfer.C
  sources/interRegion/interRegionExplicitPorositySource/interRegionExplicitPorositySource.C
  constraints/general/explicitSetValue/explicitSetValue.C
  constraints/derived/fixedTemperatureConstraint/fixedTemperatureConstraint.C
  constraints/derived/temperatureLimitsConstraint/temperatureLimitsConstraint.C
)

set(LIBRARIES
  libfiniteVolume
  libsampling
  libmeshTools
  libcompressibleTurbulenceModel
)

include_directories(.)
include_directories(../../src/OpenFOAM)
include_directories(../../src/OSspecific/POSIX)
include_directories(../../src/finiteVolume)
include_directories(../../src/meshTools)
include_directories(../../src/sampling)
include_directories(../../src/thermophysicalModels/solidThermo)
include_directories(../../src/transportModels/compressible)
include_directories(../../src/thermophysicalModels/basic)
include_directories(../../src/thermophysicalModels/specie)
include_directories(../../src/turbulenceModels/compressible/turbulenceModel)
include_directories(../../src/turbulenceModels)

add_library(libfvOptions ${SOURCES})
set_target_properties(libfvOptions PROPERTIES PREFIX "")

target_link_libraries(libfvOptions ${LIBRARIES})

install(TARGETS libfvOptions DESTINATION lib OPTIONAL)
