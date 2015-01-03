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

include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/constraints/derived/fixedTemperatureConstraint)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/constraints/derived/temperatureLimitsConstraint)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/constraints/general/explicitSetValue)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/fvOptions)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/include)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/actuationDiskSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/effectivenessHeatExchangerSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/explicitPorositySource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/MRFSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/pressureGradientExplicitSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/radialActuationDiskSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/bladeModel)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/profileModel)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/profileModel/lookup)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/profileModel/series)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/trimModel/fixed)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/trimModel/targetCoeff)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/rotorDiskSource/trimModel/trimModel)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/derived/solidificationMeltingSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/general/codedSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/general/semiImplicitSource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/interRegion/interRegionExplicitPorositySource)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/interRegion/interRegionHeatTransferModel/constantHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/interRegion/interRegionHeatTransferModel/interRegionHeatTransferModel)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/interRegion/interRegionHeatTransferModel/tabulatedHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/fvOptions/sources/interRegion/interRegionHeatTransferModel/variableHeatTransfer)
