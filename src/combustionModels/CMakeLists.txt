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
  combustionModel/combustionModel.C
  psiCombustionModel/psiCombustionModel/psiCombustionModel.C
  psiCombustionModel/psiCombustionModel/psiCombustionModelNew.C
  psiCombustionModel/psiThermoCombustion/psiThermoCombustion.C
  psiCombustionModel/psiChemistryCombustion/psiChemistryCombustion.C
  rhoCombustionModel/rhoCombustionModel/rhoCombustionModel.C
  rhoCombustionModel/rhoCombustionModel/rhoCombustionModelNew.C
  rhoCombustionModel/rhoThermoCombustion/rhoThermoCombustion.C
  rhoCombustionModel/rhoChemistryCombustion/rhoChemistryCombustion.C
  diffusion/diffusions.C
  infinitelyFastChemistry/infinitelyFastChemistrys.C
  PaSR/PaSRs.C
  laminar/laminars.C
  FSD/reactionRateFlameAreaModels/consumptionSpeed/consumptionSpeed.C
  FSD/reactionRateFlameAreaModels/reactionRateFlameArea/reactionRateFlameArea.C
  FSD/reactionRateFlameAreaModels/reactionRateFlameArea/reactionRateFlameAreaNew.C
  FSD/reactionRateFlameAreaModels/relaxation/relaxation.C
  FSD/FSDs.C
  noCombustion/noCombustions.C
)

set(LIBRARIES
  libfiniteVolume
  libcompressibleLESModels
  libchemistryModel
)

include_directories(.)
include_directories(../../src/OpenFOAM)
include_directories(../../src/OSspecific/POSIX)
include_directories(../../src/finiteVolume)
include_directories(../../src/thermophysicalModels/basic)
include_directories(../../src/thermophysicalModels/specie)
include_directories(../../src/thermophysicalModels/reactionThermo)
include_directories(../../src/thermophysicalModels/chemistryModel)
include_directories(../../src/turbulenceModels/compressible/turbulenceModel)
include_directories(../../src/turbulenceModels)
include_directories(../../src/turbulenceModels/LES/LESdeltas)
include_directories(../../src/turbulenceModels/LES/LESfilters)
include_directories(../../src/turbulenceModels/compressible/LES)

add_library(libcombustionModels ${SOURCES})
set_target_properties(libcombustionModels PROPERTIES PREFIX "")

target_link_libraries(libcombustionModels ${LIBRARIES})

install(TARGETS libcombustionModels DESTINATION lib OPTIONAL)
