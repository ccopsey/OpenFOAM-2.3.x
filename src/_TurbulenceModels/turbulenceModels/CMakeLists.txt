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
  LES/LESdeltas/LESdelta/LESdelta.C
  LES/LESdeltas/cubeRootVolDelta/cubeRootVolDelta.C
  LES/LESdeltas/PrandtlDelta/PrandtlDelta.C
  LES/LESdeltas/smoothDelta/smoothDelta.C
  LES/LESdeltas/maxDeltaxyz/maxDeltaxyz.C
  LES/LESfilters/LESfilter/LESfilter.C
  LES/LESfilters/simpleFilter/simpleFilter.C
  LES/LESfilters/laplaceFilter/laplaceFilter.C
  LES/LESfilters/anisotropicFilter/anisotropicFilter.C
  derivedFvPatchFields/fixedShearStress/fixedShearStressFvPatchVectorField.C
  derivedFvPatchFields/porousBafflePressure/porousBafflePressureFvPatchField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutWallFunction/nutWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkWallFunction/nutkWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkRoughWallFunction/nutkRoughWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkAtmRoughWallFunction/nutkAtmRoughWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUWallFunction/nutUWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUSpaldingWallFunction/nutUSpaldingWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUTabulatedWallFunction/nutUTabulatedWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutLowReWallFunction/nutLowReWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutURoughWallFunction/nutURoughWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction/epsilonWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction/epsilonLowReWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction/omegaWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction/kqRWallFunctionFvPatchFields.C
  RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction/kLowReWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet/turbulentMixingLengthDissipationRateInletFvPatchScalarField.C
  RAS/derivedFvPatchFields/turbulentMixingLengthFrequencyInlet/turbulentMixingLengthFrequencyInletFvPatchScalarField.C
  RAS/derivedFvPatchFields/atmBoundaryLayerInletEpsilon/atmBoundaryLayerInletEpsilonFvPatchScalarField.C
  RAS/derivedFvPatchFields/atmBoundaryLayerInletVelocity/atmBoundaryLayerInletVelocityFvPatchVectorField.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
)

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/finiteVolume)
include_directories(../../../src/meshTools)

add_library(libturbulenceModels ${SOURCES})
set_target_properties(libturbulenceModels PROPERTIES PREFIX "")

target_link_libraries(libturbulenceModels ${LIBRARIES})

install(TARGETS libturbulenceModels DESTINATION lib OPTIONAL)
