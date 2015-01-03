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
  radiationModel/radiationModel/radiationModel.C
  radiationModel/radiationModel/radiationModelNew.C
  radiationModel/noRadiation/noRadiation.C
  radiationModel/P1/P1.C
  radiationModel/fvDOM/fvDOM/fvDOM.C
  radiationModel/fvDOM/radiativeIntensityRay/radiativeIntensityRay.C
  radiationModel/fvDOM/blackBodyEmission/blackBodyEmission.C
  radiationModel/fvDOM/absorptionCoeffs/absorptionCoeffs.C
  radiationModel/viewFactor/viewFactor.C
  radiationModel/opaqueSolid/opaqueSolid.C
  submodels/scatterModel/scatterModel/scatterModel.C
  submodels/scatterModel/scatterModel/scatterModelNew.C
  submodels/scatterModel/noScatter/noScatter.C
  submodels/scatterModel/constantScatter/constantScatter.C
  submodels/absorptionEmissionModel/absorptionEmissionModel/absorptionEmissionModel.C
  submodels/absorptionEmissionModel/absorptionEmissionModel/absorptionEmissionModelNew.C
  submodels/absorptionEmissionModel/noAbsorptionEmission/noAbsorptionEmission.C
  submodels/absorptionEmissionModel/constantAbsorptionEmission/constantAbsorptionEmission.C
  submodels/absorptionEmissionModel/binaryAbsorptionEmission/binaryAbsorptionEmission.C
  submodels/absorptionEmissionModel/greyMeanAbsorptionEmission/greyMeanAbsorptionEmission.C
  submodels/absorptionEmissionModel/wideBandAbsorptionEmission/wideBandAbsorptionEmission.C
  submodels/absorptionEmissionModel/greyMeanSolidAbsorptionEmission/greyMeanSolidAbsorptionEmission.C
  submodels/sootModel/sootModel/sootModel.C
  submodels/sootModel/sootModel/sootModelNew.C
  submodels/sootModel/mixtureFractionSoot/mixtureFractionSoots.C
  submodels/sootModel/noSoot/noSoot.C
  derivedFvPatchFields/MarshakRadiation/MarshakRadiationFvPatchScalarField.C
  derivedFvPatchFields/MarshakRadiationFixedTemperature/MarshakRadiationFixedTemperatureFvPatchScalarField.C
  derivedFvPatchFields/greyDiffusiveRadiation/greyDiffusiveRadiationMixedFvPatchScalarField.C
  derivedFvPatchFields/wideBandDiffusiveRadiation/wideBandDiffusiveRadiationMixedFvPatchScalarField.C
  derivedFvPatchFields/radiationCoupledBase/radiationCoupledBase.C
  derivedFvPatchFields/greyDiffusiveViewFactor/greyDiffusiveViewFactorFixedValueFvPatchScalarField.C
)

set(LIBRARIES
  libfiniteVolume
  libfluidThermophysicalModels
  libspecie
  libsolidThermo
  libmeshTools
  libSLGThermo
  libsolidMixtureProperties
  libliquidMixtureProperties
  libsolidProperties
  libliquidProperties
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/meshTools/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/solidThermo/include.cmake)
include(../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/reactionThermo/include.cmake)

add_library(libradiationModels ${SOURCES})
set_target_properties(libradiationModels PROPERTIES PREFIX "")

target_link_libraries(libradiationModels ${LIBRARIES})

install(TARGETS libradiationModels DESTINATION lib OPTIONAL)
