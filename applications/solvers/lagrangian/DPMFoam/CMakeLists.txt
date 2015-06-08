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
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(./DPMTurbulenceModels/include.cmake)
include(../../../../src/lagrangian/basic/include.cmake)
include(../../../../src/lagrangian/intermediate/include.cmake)
include(../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../src/transportModels/compressible/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include_directories(../../../../src/transportModels)
include_directories(../../../../src/transportModels/incompressible/singlePhaseTransportModel)
include(../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../src/TurbulenceModels/incompressible/include.cmake)
include(../../../../src/regionModels/regionModel/include.cmake)
include(../../../../src/regionModels/surfaceFilmModels/include.cmake)
include(../../../../src/meshTools/include.cmake)

add_executable(DPMFoam ${SOURCES})

target_link_libraries(DPMFoam ${LIBRARIES})

install(TARGETS DPMFoam DESTINATION applications OPTIONAL)
