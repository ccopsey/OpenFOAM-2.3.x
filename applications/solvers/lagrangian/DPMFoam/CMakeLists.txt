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

#add_subdirectory(DPMTurbulenceModels)
#add_subdirectory(MPPICFoam)

set(SOURCES
  DPMFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libmeshTools
  liblagrangian
  liblagrangianIntermediate
  liblagrangianTurbulentSubModels
  libthermophysicalFunctions
  libspecie
  libradiationModels
  libincompressibleTransportModels
  libturbulenceModels
  libincompressibleTurbulenceModels
  libDPMTurbulenceModels
  libregionModels
  libsurfaceFilmModels
  libsampling
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(./DPMTurbulenceModels)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/lagrangian/basic)
include_directories(../../../../src/lagrangian/intermediate)
include_directories(../../../../src/thermophysicalModels/specie)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../../src/transportModels)
include_directories(../../../../src/transportModels/incompressible/singlePhaseTransportModel)
include_directories(../../../../src/_TurbulenceModels/turbulenceModels)
include_directories(../../../../src/_TurbulenceModels/incompressible)
include_directories(../../../../src/regionModels/regionModel)
include_directories(../../../../src/regionModels/surfaceFilmModels)

add_executable(DPMFoam ${SOURCES})

target_link_libraries(DPMFoam ${LIBRARIES})

install(TARGETS DPMFoam DESTINATION applications OPTIONAL)
