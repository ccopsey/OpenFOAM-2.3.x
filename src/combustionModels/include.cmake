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

include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/combustionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/diffusion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/FSD)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/FSD/reactionRateFlameAreaModels/consumptionSpeed)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/FSD/reactionRateFlameAreaModels/reactionRateFlameArea)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/FSD/reactionRateFlameAreaModels/relaxation)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/infinitelyFastChemistry)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/laminar)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/noCombustion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/PaSR)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/psiCombustionModel/psiChemistryCombustion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/psiCombustionModel/psiCombustionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/psiCombustionModel/psiThermoCombustion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/rhoCombustionModel/rhoChemistryCombustion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/rhoCombustionModel/rhoCombustionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/rhoCombustionModel/rhoThermoCombustion)
include_directories(${PROJECT_SOURCE_DIR}/src/combustionModels/singleStepCombustion)
