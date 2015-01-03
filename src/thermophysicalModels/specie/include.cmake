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

include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/atomicWeights)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/adiabaticPerfectFluid)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/icoPolynomial)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/incompressiblePerfectGas)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/linear)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/PengRobinsonGas)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/perfectFluid)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/perfectGas)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/equationOfState/rhoConst)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/include)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/ArrheniusReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/ChemicallyActivatedReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/fallOffFunctions/LindemannFallOffFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/fallOffFunctions/SRIFallOffFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/fallOffFunctions/TroeFallOffFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/FallOffReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/infiniteReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/JanevReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/LandauTellerReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/LangmuirHinshelwood)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/powerSeries)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/thirdBodyArrheniusReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactionRate/thirdBodyEfficiencies)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/reactions)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/Reactions/IrreversibleReaction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/Reactions/NonEquilibriumReversibleReaction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/Reactions/Reaction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/Reactions/ReactionList)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/reaction/Reactions/ReversibleReaction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/specie)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/speciesTable)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/absoluteEnthalpy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/absoluteInternalEnergy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/eConst)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/hConst)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/hExponential)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/hPolynomial)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/janaf)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/sensibleEnthalpy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/sensibleInternalEnergy)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/thermo/thermo)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/transport/const)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/transport/polynomial)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/specie/transport/sutherland)
