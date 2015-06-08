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
  realizableKE/realizableKE.C
  kOmega/kOmega.C
  kOmegaSST/kOmegaSST.C
  SpalartAllmaras/SpalartAllmaras.C
  LRR/LRR.C
  LaunderGibsonRSTM/LaunderGibsonRSTM.C
  LaunderSharmaKE/LaunderSharmaKE.C
  qZeta/qZeta.C
  LienCubicKE/LienCubicKE.C
  LienCubicKELowRe/LienCubicKELowRe.C
  NonlinearKEShih/NonlinearKEShih.C
  LienLeschzinerLowRe/LienLeschzinerLowRe.C
  LamBremhorstKE/LamBremhorstKE.C
  kkLOmega/kkLOmega.C
  v2f/v2f.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutWallFunction/nutWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkWallFunction/nutkWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkRoughWallFunction/nutkRoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkAtmRoughWallFunction/nutkAtmRoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUWallFunction/nutUWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUSpaldingWallFunction/nutUSpaldingWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUTabulatedWallFunction/nutUTabulatedWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutLowReWallFunction/nutLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutURoughWallFunction/nutURoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction/epsilonWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction/epsilonLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction/fWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction/omegaWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction/kqRWallFunctionFvPatchFields.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction/kLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction/alphatJayatillekeWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction/v2WallFunctionFvPatchScalarField.C
  derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet/turbulentMixingLengthDissipationRateInletFvPatchScalarField.C
  derivedFvPatchFields/turbulentMixingLengthFrequencyInlet/turbulentMixingLengthFrequencyInletFvPatchScalarField.C
  derivedFvPatchFields/atmBoundaryLayer/atmBoundaryLayer.C
  derivedFvPatchFields/atmBoundaryLayerInletVelocity/atmBoundaryLayerInletVelocityFvPatchVectorField.C
  derivedFvPatchFields/atmBoundaryLayerInletK/atmBoundaryLayerInletKFvPatchScalarField.C
  derivedFvPatchFields/atmBoundaryLayerInletEpsilon/atmBoundaryLayerInletEpsilonFvPatchScalarField.C
  backwardsCompatibility/wallFunctions/backwardsCompatibilityWallFunctions.C
)

set(LIBRARIES
  libincompressibleTurbulenceModel
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include_directories(../../../../src/turbulenceModels)
include_directories(../../../../src/transportModels)
include(../../../../src/meshTools/include.cmake)

add_library(libincompressibleRASModels ${SOURCES})
set_target_properties(libincompressibleRASModels PROPERTIES PREFIX "")

target_link_libraries(libincompressibleRASModels ${LIBRARIES})

install(TARGETS libincompressibleRASModels DESTINATION lib OPTIONAL)
