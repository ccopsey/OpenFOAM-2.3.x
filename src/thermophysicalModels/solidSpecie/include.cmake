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

include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/include)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/reaction/reactionRate/solidArrheniusReactionRate)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/reaction/reactions)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/reaction/Reactions/solidReaction)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/transport/const)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/transport/exponential)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/solidSpecie/transport/polynomial)
