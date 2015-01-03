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

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/transportModels/compressible/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/transportModels/incompressible/include.cmake)
include(../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../src/TurbulenceModels/compressible/include.cmake)
include(phaseCompressibleTurbulenceModels/include.cmake)
include(interfacialModels/include.cmake)
include(twoPhaseSystem/include.cmake)
include(../../../../src/fvOptions/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/sampling/include.cmake)

add_executable(twoPhaseEulerFoam ${SOURCES})

target_link_libraries(twoPhaseEulerFoam ${LIBRARIES})

install(TARGETS twoPhaseEulerFoam DESTINATION applications OPTIONAL)
