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

include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/.)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/laminarFlameSpeed/SCOPE)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/PDRModels/dragModels/basic)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/PDRModels/dragModels/PDRDragModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/PDRModels/turbulence/PDRkEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/PDRModels/XiEqModels/basicXiSubXiEq)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/PDRModels/XiGModels/basicXiSubG)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/algebraic)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/fixed)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/transport)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiEqModels/Gulder)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiEqModels/instabilityXiEq)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiEqModels/SCOPEBlendXiEq)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiEqModels/SCOPEXiEq)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiEqModels/XiEqModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiGModels/instabilityG)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiGModels/KTS)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiGModels/XiGModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/combustion/PDRFoam/XiModels/XiModel)
