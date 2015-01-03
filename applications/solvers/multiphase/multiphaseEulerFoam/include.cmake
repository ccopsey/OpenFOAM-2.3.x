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

include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/.)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/blended)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/dragModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/Ergun)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/Gibilaro)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/GidaspowErgunWenYu)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/GidaspowSchillerNaumann)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/interface)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/SchillerNaumann)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/SyamlalOBrien)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/dragModels/WenYu)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/heatTransferModels/heatTransferModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/interfacialModels/heatTransferModels/RanzMarshall)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem/alphaContactAngle)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem/diameterModels/constantDiameter)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem/diameterModels/diameterModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem/diameterModels/isothermalDiameter)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/multiphaseEulerFoam/multiphaseSystem/phaseModel)
