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
  multiphaseInterDyMFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libmultiphaseInterFoam
  libinterfaceProperties
  libincompressibleTransportModels
  libincompressibleTurbulenceModel
  libincompressibleRASModels
  libincompressibleLESModels
  libfiniteVolume
  libdynamicMesh
  libdynamicFvMesh
  libtopoChangerFvMesh
  libfvOptions
  libmeshTools
  libsampling
)

include_directories(.)
include_directories(../../../../../src/OpenFOAM)
include_directories(../../../../../src/OSspecific/POSIX)
include_directories(..)
include_directories(../../../../../src/finiteVolume)
include_directories(../../interFoam/interDyMFoam)
include_directories(../../interFoam)
include_directories(../multiphaseMixture)
include_directories(../../../../../src/transportModels)
include_directories(../../../../../src/transportModels/incompressible)
include_directories(../../../../../src/transportModels/interfaceProperties)
include_directories(../../../../../src/turbulenceModels/incompressible/turbulenceModel)
include_directories(../../../../../src/dynamicMesh)
include_directories(../../../../../src/dynamicFvMesh)
include_directories(../../../../../src/fvOptions)
include_directories(../../../../../src/meshTools)
include_directories(../../../../../src/sampling)

add_executable(multiphaseInterDyMFoam ${SOURCES})

target_link_libraries(multiphaseInterDyMFoam ${LIBRARIES})

install(TARGETS multiphaseInterDyMFoam DESTINATION applications OPTIONAL)
