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

add_subdirectory(compressibleInterDyMFoam)
add_subdirectory(twoPhaseMixtureThermo)

set(SOURCES
  compressibleInterFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libtwoPhaseMixtureThermo
  libfluidThermophysicalModels
  libspecie
  libtwoPhaseMixture
  libtwoPhaseProperties
  libinterfaceProperties
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
  libfiniteVolume
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(twoPhaseMixtureThermo)
include_directories(../../../../src/transportModels/compressible)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/transportModels/twoPhaseMixture)
include_directories(../../../../src/transportModels/interfaceProperties)
include_directories(../../../../src/turbulenceModels/compressible/turbulenceModel)

add_executable(compressibleInterFoam ${SOURCES})

target_link_libraries(compressibleInterFoam ${LIBRARIES})

install(TARGETS compressibleInterFoam DESTINATION applications OPTIONAL)
