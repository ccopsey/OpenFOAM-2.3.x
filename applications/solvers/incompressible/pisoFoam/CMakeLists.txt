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

set(SOURCES
  pisoFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libincompressibleTurbulenceModel
  libincompressibleRASModels
  libincompressibleLESModels
  libincompressibleTransportModels
  libfiniteVolume
  libmeshTools
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/turbulenceModels/incompressible/turbulenceModel)
include_directories(../../../../src/transportModels)
include_directories(../../../../src/transportModels/incompressible/singlePhaseTransportModel)

add_executable(pisoFoam ${SOURCES})

target_link_libraries(pisoFoam ${LIBRARIES})

install(TARGETS pisoFoam DESTINATION applications OPTIONAL)
