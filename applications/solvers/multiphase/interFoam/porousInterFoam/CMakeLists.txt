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
  porousInterFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libimmiscibleIncompressibleTwoPhaseMixture
  libincompressibleTransportModels
  libincompressibleTurbulenceModel
  libincompressibleRASModels
  libincompressibleLESModels
  libfiniteVolume
  libmeshTools
  libfvOptions
  libsampling
)

include_directories(.)
include_directories(../../../../../src/OpenFOAM)
include_directories(../../../../../src/OSspecific/POSIX)
include_directories(..)
include_directories(../../../../../src/finiteVolume)
include_directories(../../../../../src/transportModels/twoPhaseMixture)
include_directories(../../../../../src/transportModels)
include_directories(../../../../../src/transportModels/incompressible)
include_directories(../../../../../src/transportModels/interfaceProperties)
include_directories(../../../../../src/transportModels/immiscibleIncompressibleTwoPhaseMixture)
include_directories(../../../../../src/turbulenceModels/incompressible/turbulenceModel)
include_directories(../../../../../src/meshTools)
include_directories(../../../../../src/fvOptions)
include_directories(../../../../../src/sampling)

add_executable(porousInterFoam ${SOURCES})

target_link_libraries(porousInterFoam ${LIBRARIES})

install(TARGETS porousInterFoam DESTINATION applications OPTIONAL)
