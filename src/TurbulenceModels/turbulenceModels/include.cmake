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

include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/.)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/derivedFvPatchFields/fixedShearStress)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/derivedFvPatchFields/porousBafflePressure)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/eddyViscosity)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/laminar)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/eddyViscosity)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/kEqn)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESdeltas/cubeRootVolDelta)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESdeltas/LESdelta)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESdeltas/maxDeltaxyz)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESdeltas/PrandtlDelta)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESdeltas/smoothDelta)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESfilters/anisotropicFilter)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESfilters/laplaceFilter)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESfilters/LESfilter)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESfilters/simpleFilter)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/LESModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/LES/Smagorinsky)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/atmBoundaryLayerInletEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/atmBoundaryLayerInletVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/doc)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/turbulentMixingLengthFrequencyInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkAtmRoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkRoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutURoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUSpaldingWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUTabulatedWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/kEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/RAS/RASModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/turbulenceModels/TurbulenceModel)
