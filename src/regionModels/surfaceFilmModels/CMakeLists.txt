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

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/meshTools/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../src/lagrangian/distributionModels/include.cmake)
include(../../../src/regionModels/regionModel/include.cmake)

add_library(libsurfaceFilmModels ${SOURCES})
set_target_properties(libsurfaceFilmModels PROPERTIES PREFIX "")

target_link_libraries(libsurfaceFilmModels ${LIBRARIES})

install(TARGETS libsurfaceFilmModels DESTINATION lib OPTIONAL)
