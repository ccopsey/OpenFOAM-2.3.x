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

include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/clouds/baseClasses/sprayCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/clouds/derived/basicSprayCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/clouds/Templates/SprayCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/parcels/derived/basicSprayParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/parcels/include)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/parcels/Templates/SprayParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/AtomizationModel/AtomizationModel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/AtomizationModel/BlobsSheetAtomization)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/AtomizationModel/LISAAtomization)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/AtomizationModel/NoAtomization)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/BreakupModel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/ETAB)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/NoBreakup)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/PilchErdman)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/ReitzDiwakar)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/ReitzKHRT)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/SHF)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/BreakupModel/TAB)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/StochasticCollision/ORourkeCollision)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/spray/submodels/StochasticCollision/TrajectoryCollision)
