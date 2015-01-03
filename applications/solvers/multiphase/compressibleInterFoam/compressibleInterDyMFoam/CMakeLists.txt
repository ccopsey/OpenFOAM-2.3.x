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
  compressibleInterDyMFoam.C
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
  libdynamicMesh
  libmeshTools
  libdynamicFvMesh
  libfiniteVolume
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(../twoPhaseMixtureThermo)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/transportModels/twoPhaseMixture/include.cmake)
include(../../../../../src/transportModels/interfaceProperties/include.cmake)
include_directories(../../../../../src/turbulenceModels/compressible/turbulenceModel)
include(../../../../../src/dynamicMesh/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/dynamicFvMesh/include.cmake)

add_executable(compressibleInterDyMFoam ${SOURCES})

target_link_libraries(compressibleInterDyMFoam ${LIBRARIES})

install(TARGETS compressibleInterDyMFoam DESTINATION applications OPTIONAL)
