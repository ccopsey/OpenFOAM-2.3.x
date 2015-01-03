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

include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/backwardsCompatibility/wallFunctions)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/atmBoundaryLayerInletEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/doc)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/turbulentMixingLengthFrequencyInlet)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkAtmRoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkRoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutLowReWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutURoughWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUSpaldingWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUTabulatedWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions/nutWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/include)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/kEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/kkLOmega)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/kOmega)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/kOmegaSST)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LamBremhorstKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/laminar)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LaunderGibsonRSTM)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LaunderSharmaKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LienCubicKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LienCubicKELowRe)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LienLeschzinerLowRe)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/LRR)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/NonlinearKEShih)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/qZeta)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/RASModel)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/realizableKE)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/RNGkEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/SpalartAllmaras)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/incompressible/RAS/v2f)
