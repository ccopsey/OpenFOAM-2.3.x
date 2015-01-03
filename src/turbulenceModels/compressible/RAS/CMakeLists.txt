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
  RASModel/RASModel.C
  laminar/laminar.C
  kEpsilon/kEpsilon.C
  RNGkEpsilon/RNGkEpsilon.C
  LaunderSharmaKE/LaunderSharmaKE.C
  LRR/LRR.C
  LaunderGibsonRSTM/LaunderGibsonRSTM.C
  realizableKE/realizableKE.C
  SpalartAllmaras/SpalartAllmaras.C
  kOmegaSST/kOmegaSST.C
  v2f/v2f.C
  derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatWallFunction/alphatWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction/alphatJayatillekeWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutWallFunction/mutWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutkWallFunction/mutkWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutkRoughWallFunction/mutkRoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutUWallFunction/mutUWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutURoughWallFunction/mutURoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutUSpaldingWallFunction/mutUSpaldingWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/mutWallFunctions/mutLowReWallFunction/mutLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction/epsilonWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction/epsilonLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction/fWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction/omegaWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction/kqRWallFunctionFvPatchFields.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction/kLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction/v2WallFunctionFvPatchScalarField.C
  derivedFvPatchFields/convectiveHeatTransfer/convectiveHeatTransferFvPatchScalarField.C
  derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet/turbulentMixingLengthDissipationRateInletFvPatchScalarField.C
  derivedFvPatchFields/turbulentMixingLengthFrequencyInlet/turbulentMixingLengthFrequencyInletFvPatchScalarField.C
  backwardsCompatibility/wallFunctions/backwardsCompatibilityWallFunctions.C
)

set(LIBRARIES
  libcompressibleTurbulenceModel
  libfiniteVolume
  libfluidThermophysicalModels
  libspecie
  libmeshTools
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/turbulenceModels)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/solidThermo)
include_directories(../../../../src/meshTools)

add_library(libcompressibleRASModels ${SOURCES})
set_target_properties(libcompressibleRASModels PROPERTIES PREFIX "")

target_link_libraries(libcompressibleRASModels ${LIBRARIES})

install(TARGETS libcompressibleRASModels DESTINATION lib OPTIONAL)
