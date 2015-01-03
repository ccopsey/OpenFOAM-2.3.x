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

include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/backwardsCompatibility/wallFunctions)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/convectiveHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/doc)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/turbulentMixingLengthFrequencyInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutkRoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutkWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutURoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutUSpaldingWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutUWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions/mutWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/kEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/kOmegaSST)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/laminar)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/LaunderGibsonRSTM)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/LaunderSharmaKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/LRR)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/RASModel)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/realizableKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/RNGkEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/SpalartAllmaras)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/RAS/v2f)
