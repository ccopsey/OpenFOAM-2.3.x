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

add_subdirectory(derivedFvPatchFields)

set(SOURCES
  surfaceFilmModel/surfaceFilmModel.C
  surfaceFilmModel/surfaceFilmModelNew.C
  noFilm/noFilm.C
  kinematicSingleLayer/kinematicSingleLayer.C
  thermoSingleLayer/thermoSingleLayer.C
  submodels/filmSubModelBase.C
  submodels/kinematic/force/force/force.C
  submodels/kinematic/force/force/forceNew.C
  submodels/kinematic/force/forceList/forceList.C
  submodels/kinematic/force/contactAngleForce/contactAngleForce.C
  submodels/kinematic/force/thermocapillaryForce/thermocapillaryForce.C
  submodels/kinematic/injectionModel/injectionModel/injectionModel.C
  submodels/kinematic/injectionModel/injectionModel/injectionModelNew.C
  submodels/kinematic/injectionModel/injectionModelList/injectionModelList.C
  submodels/kinematic/injectionModel/drippingInjection/drippingInjection.C
  submodels/kinematic/injectionModel/removeInjection/removeInjection.C
  submodels/kinematic/injectionModel/curvatureSeparation/curvatureSeparation.C
  submodels/kinematic/filmThermoModel/filmThermoModel/filmThermoModel.C
  submodels/kinematic/filmThermoModel/filmThermoModel/filmThermoModelNew.C
  submodels/kinematic/filmThermoModel/constantFilmThermo/constantFilmThermo.C
  submodels/kinematic/filmThermoModel/liquidFilmThermo/liquidFilmThermo.C
  submodels/kinematic/filmTurbulenceModel/filmTurbulenceModel/filmTurbulenceModel.C
  submodels/kinematic/filmTurbulenceModel/filmTurbulenceModel/filmTurbulenceModelNew.C
  submodels/kinematic/filmTurbulenceModel/laminar/laminar.C
  submodels/thermo/phaseChangeModel/phaseChangeModel/phaseChangeModel.C
  submodels/thermo/phaseChangeModel/phaseChangeModel/phaseChangeModelNew.C
  submodels/thermo/phaseChangeModel/noPhaseChange/noPhaseChange.C
  submodels/thermo/phaseChangeModel/standardPhaseChange/standardPhaseChange.C
  submodels/thermo/phaseChangeModel/solidification/solidification.C
  submodels/thermo/heatTransferModel/heatTransferModel/heatTransferModel.C
  submodels/thermo/heatTransferModel/heatTransferModel/heatTransferModelNew.C
  submodels/thermo/heatTransferModel/constantHeatTransfer/constantHeatTransfer.C
  submodels/thermo/heatTransferModel/mappedConvectiveHeatTransfer/mappedConvectiveHeatTransfer.C
  submodels/thermo/filmRadiationModel/filmRadiationModel/filmRadiationModel.C
  submodels/thermo/filmRadiationModel/filmRadiationModel/filmRadiationModelNew.C
  submodels/thermo/filmRadiationModel/noRadiation/noRadiation.C
  submodels/thermo/filmRadiationModel/constantRadiation/constantRadiation.C
  submodels/thermo/filmRadiationModel/primaryRadiation/primaryRadiation.C
  submodels/thermo/filmRadiationModel/standardRadiation/standardRadiation.C
  submodels/thermo/filmViscosityModel/filmViscosityModel/filmViscosityModel.C
  submodels/thermo/filmViscosityModel/filmViscosityModel/filmViscosityModelNew.C
  submodels/thermo/filmViscosityModel/constantViscosity/constantViscosity.C
  submodels/thermo/filmViscosityModel/liquidViscosity/liquidViscosity.C
  submodels/thermo/filmViscosityModel/thixotropicViscosity/thixotropicViscosity.C
  derivedFvPatchFields/filmHeightInletVelocity/filmHeightInletVelocityFvPatchVectorField.C
  derivedFvPatchFields/inclinedFilmNusseltHeight/inclinedFilmNusseltHeightFvPatchScalarField.C
  derivedFvPatchFields/inclinedFilmNusseltInletVelocity/inclinedFilmNusseltInletVelocityFvPatchVectorField.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  libfluidThermophysicalModels
  libspecie
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libreactionThermophysicalModels
  libSLGThermo
  libdistributionModels
  libregionModels
)

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/finiteVolume)
include_directories(../../../src/meshTools)
include_directories(../../../src/thermophysicalModels/basic)
include_directories(../../../src/thermophysicalModels/specie)
include_directories(../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../src/thermophysicalModels/properties/liquidMixtureProperties)
include_directories(../../../src/thermophysicalModels/properties/solidProperties)
include_directories(../../../src/thermophysicalModels/properties/solidMixtureProperties)
include_directories(../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../src/thermophysicalModels/SLGThermo)
include_directories(../../../src/lagrangian/distributionModels)
include_directories(../../../src/regionModels/regionModel)

add_library(libsurfaceFilmModels ${SOURCES})
set_target_properties(libsurfaceFilmModels PROPERTIES PREFIX "")

target_link_libraries(libsurfaceFilmModels ${LIBRARIES})

install(TARGETS libsurfaceFilmModels DESTINATION lib OPTIONAL)
