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

add_subdirectory(interfacialModels)
#add_subdirectory(phaseCompressibleTurbulenceModels)
#add_subdirectory(twoPhaseSystem)

set(SOURCES
  twoPhaseEulerFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfluidThermophysicalModels
  libspecie
  libturbulenceModels
  libcompressibleTurbulenceModels
  libphaseCompressibleTurbulenceModels
  libincompressibleTransportModels
  libcompressibleTwoPhaseSystem
  libcompressibleEulerianInterfacialModels
  libfiniteVolume
  libfvOptions
  libmeshTools
  libsampling
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/transportModels/compressible)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/transportModels/incompressible)
include_directories(../../../../src/_TurbulenceModels/turbulenceModels)
include_directories(../../../../src/_TurbulenceModels/compressible)
include_directories(phaseCompressibleTurbulenceModels)
include_directories(interfacialModels)
include_directories(twoPhaseSystem)
include_directories(../../../../src/fvOptions)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/sampling)

add_executable(twoPhaseEulerFoam ${SOURCES})

target_link_libraries(twoPhaseEulerFoam ${LIBRARIES})

install(TARGETS twoPhaseEulerFoam DESTINATION applications OPTIONAL)
