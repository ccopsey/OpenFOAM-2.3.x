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

include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/clouds/baseClasses/DsmcBaseCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/clouds/derived/dsmcCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/clouds/Templates/DsmcCloud)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/parcels/derived/dsmcParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/parcels/Templates/DsmcParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/BinaryCollisionModel/BinaryCollisionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/BinaryCollisionModel/LarsenBorgnakkeVariableHardSphere)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/BinaryCollisionModel/NoBinaryCollision)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/BinaryCollisionModel/VariableHardSphere)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/InflowBoundaryModel/FreeStream)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/InflowBoundaryModel/InflowBoundaryModel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/InflowBoundaryModel/NoInflow)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/WallInteractionModel/MaxwellianThermal)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/WallInteractionModel/MixedDiffuseSpecular)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/WallInteractionModel/SpecularReflection)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/dsmc/submodels/WallInteractionModel/WallInteractionModel)
