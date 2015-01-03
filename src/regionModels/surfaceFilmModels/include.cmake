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

include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/doc)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/filmHeightInletVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/inclinedFilmNusseltHeight)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/inclinedFilmNusseltInletVelocity)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/wallFunctions/alphatFilmWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/derivedFvPatchFields/wallFunctions/mutkFilmWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/kinematicSingleLayer)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/noFilm)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/filmThermoModel/constantFilmThermo)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/filmThermoModel/filmThermoModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/filmThermoModel/liquidFilmThermo)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/filmTurbulenceModel/filmTurbulenceModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/filmTurbulenceModel/laminar)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/force/contactAngleForce)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/force/force)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/force/forceList)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/force/thermocapillaryForce)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/injectionModel/curvatureSeparation)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/injectionModel/drippingInjection)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/injectionModel/injectionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/injectionModel/injectionModelList)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/kinematic/injectionModel/removeInjection)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmRadiationModel/constantRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmRadiationModel/filmRadiationModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmRadiationModel/noRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmRadiationModel/primaryRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmRadiationModel/standardRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmViscosityModel/constantViscosity)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmViscosityModel/filmViscosityModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmViscosityModel/liquidViscosity)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/filmViscosityModel/thixotropicViscosity)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/heatTransferModel/constantHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/heatTransferModel/heatTransferModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/heatTransferModel/mappedConvectiveHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/phaseChangeModel/noPhaseChange)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/phaseChangeModel/phaseChangeModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/phaseChangeModel/solidification)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/submodels/thermo/phaseChangeModel/standardPhaseChange)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/surfaceFilmModel)
include_directories(${PROJECT_SOURCE_DIR}/src/regionModels/surfaceFilmModels/thermoSingleLayer)
