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

include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/.)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/chemistryReaders/chemistryReader)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/chemistryReaders/chemkinReader)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/chemistryReaders/foamChemistryReader)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/derivedFvPatchFields/fixedUnburntEnthalpy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/derivedFvPatchFields/gradientUnburntEnthalpy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/derivedFvPatchFields/mixedUnburntEnthalpy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/basicMultiComponentMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/egrMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/homogeneousMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/inhomogeneousMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/multiComponentMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/reactingMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/singleStepReactingMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/SpecieMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/mixtures/veryInhomogeneousMixture)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/psiReactionThermo)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/psiuReactionThermo)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/reactionThermo/rhoReactionThermo)

