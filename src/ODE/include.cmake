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

include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/adaptiveSolver)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/Euler)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/EulerSI)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/ODESolver)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/RKCK45)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/RKDP45)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/RKF45)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/rodas23)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/rodas34)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/Rosenbrock12)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/Rosenbrock23)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/Rosenbrock34)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/seulex)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/SIBS)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESolvers/Trapezoid)
include_directories(${PROJECT_SOURCE_DIR}/src/ODE/ODESystem)
