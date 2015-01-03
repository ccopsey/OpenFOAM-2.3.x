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
  clouds/baseClasses/kinematicCloud/kinematicCloud.C
  clouds/baseClasses/thermoCloud/thermoCloud.C
  clouds/baseClasses/reactingCloud/reactingCloud.C
  clouds/baseClasses/reactingMultiphaseCloud/reactingMultiphaseCloud.C
  parcels/derived/basicKinematicParcel/defineBasicKinematicParcel.C
  parcels/derived/basicKinematicParcel/makeBasicKinematicParcelSubmodels.C
  parcels/derived/basicKinematicCollidingParcel/defineBasicKinematicCollidingParcel.C
  parcels/derived/basicKinematicCollidingParcel/makeBasicKinematicCollidingParcelSubmodels.C
  parcels/derived/basicThermoParcel/defineBasicThermoParcel.C
  parcels/derived/basicThermoParcel/makeBasicThermoParcelSubmodels.C
  parcels/derived/basicReactingParcel/defineBasicReactingParcel.C
  parcels/derived/basicReactingParcel/makeBasicReactingParcelSubmodels.C
  parcels/derived/basicReactingMultiphaseParcel/defineBasicReactingMultiphaseParcel.C
  parcels/derived/basicReactingMultiphaseParcel/makeBasicReactingMultiphaseParcelSubmodels.C
  parcels/derived/basicKinematicMPPICParcel/defineBasicKinematicMPPICParcel.C
  parcels/derived/basicKinematicMPPICParcel/makeBasicKinematicMPPICParcelSubmodels.C
  submodels/addOns/radiation/absorptionEmission/cloudAbsorptionEmission/cloudAbsorptionEmission.C
  submodels/addOns/radiation/scatter/cloudScatter/cloudScatter.C
  submodels/Kinematic/PatchInteractionModel/LocalInteraction/patchInteractionData.C
  submodels/Kinematic/PatchInteractionModel/LocalInteraction/patchInteractionDataList.C
  submodels/Kinematic/InjectionModel/KinematicLookupTableInjection/kinematicParcelInjectionData.C
  submodels/Kinematic/InjectionModel/KinematicLookupTableInjection/kinematicParcelInjectionDataIO.C
  submodels/Kinematic/InjectionModel/KinematicLookupTableInjection/kinematicParcelInjectionDataIOList.C
  submodels/Kinematic/InjectionModel/PatchInjection/patchInjectionBase.C
  submodels/Thermodynamic/InjectionModel/ThermoLookupTableInjection/thermoParcelInjectionData.C
  submodels/Thermodynamic/InjectionModel/ThermoLookupTableInjection/thermoParcelInjectionDataIO.C
  submodels/Thermodynamic/InjectionModel/ThermoLookupTableInjection/thermoParcelInjectionDataIOList.C
  submodels/Reacting/InjectionModel/ReactingLookupTableInjection/reactingParcelInjectionData.C
  submodels/Reacting/InjectionModel/ReactingLookupTableInjection/reactingParcelInjectionDataIO.C
  submodels/Reacting/InjectionModel/ReactingLookupTableInjection/reactingParcelInjectionDataIOList.C
  submodels/ReactingMultiphase/InjectionModel/ReactingMultiphaseLookupTableInjection/reactingMultiphaseParcelInjectionData.C
  submodels/ReactingMultiphase/InjectionModel/ReactingMultiphaseLookupTableInjection/reactingMultiphaseParcelInjectionDataIO.C
  submodels/ReactingMultiphase/InjectionModel/ReactingMultiphaseLookupTableInjection/reactingMultiphaseParcelInjectionDataIOList.C
  submodels/MPPIC/ParticleStressModels/ParticleStressModel/ParticleStressModel.C
  submodels/MPPIC/ParticleStressModels/HarrisCrighton/HarrisCrighton.C
  submodels/MPPIC/ParticleStressModels/Lun/Lun.C
  submodels/MPPIC/ParticleStressModels/exponential/exponential.C
  submodels/MPPIC/CorrectionLimitingMethods/CorrectionLimitingMethod/CorrectionLimitingMethod.C
  submodels/MPPIC/CorrectionLimitingMethods/noCorrectionLimiting/noCorrectionLimiting.C
  submodels/MPPIC/CorrectionLimitingMethods/absolute/absolute.C
  submodels/MPPIC/CorrectionLimitingMethods/relative/relative.C
  submodels/MPPIC/TimeScaleModels/TimeScaleModel/TimeScaleModel.C
  submodels/MPPIC/TimeScaleModels/equilibrium/equilibrium.C
  submodels/MPPIC/TimeScaleModels/nonEquilibrium/nonEquilibrium.C
  submodels/MPPIC/TimeScaleModels/isotropic/isotropic.C
  IntegrationScheme/makeIntegrationSchemes.C
  phaseProperties/phaseProperties/phaseProperties.C
  phaseProperties/phaseProperties/phasePropertiesIO.C
  phaseProperties/phasePropertiesList/phasePropertiesList.C
  clouds/Templates/KinematicCloud/cloudSolution/cloudSolution.C
  submodels/MPPIC/AveragingMethods/makeAveragingMethods.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  liblagrangian
  libdistributionModels
  libspecie
  libfluidThermophysicalModels
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libreactionThermophysicalModels
  libSLGThermo
  libradiationModels
  libincompressibleTransportModels
  libregionModels
  libsurfaceFilmModels
  libdynamicFvMesh
  libsampling
)

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/finiteVolume)
include_directories(../../../src/meshTools)
include_directories(../../../src/lagrangian/basic)
include_directories(../../../src/lagrangian/distributionModels)
include_directories(../../../src/thermophysicalModels/specie)
include_directories(../../../src/thermophysicalModels/basic)
include_directories(../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../src/thermophysicalModels/properties/liquidMixtureProperties)
include_directories(../../../src/thermophysicalModels/properties/solidProperties)
include_directories(../../../src/thermophysicalModels/properties/solidMixtureProperties)
include_directories(../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../src/thermophysicalModels/SLGThermo)
include_directories(../../../src/thermophysicalModels/radiationModels)
include_directories(../../../src/transportModels)
include_directories(../../../src/regionModels/regionModel)
include_directories(../../../src/regionModels/surfaceFilmModels)
include_directories(../../../src/dynamicFvMesh)
include_directories(../../../src/sampling)

add_library(liblagrangianIntermediate ${SOURCES})
set_target_properties(liblagrangianIntermediate PROPERTIES PREFIX "")

target_link_libraries(liblagrangianIntermediate ${LIBRARIES})

install(TARGETS liblagrangianIntermediate DESTINATION lib OPTIONAL)
