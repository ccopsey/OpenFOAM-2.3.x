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

#add_subdirectory(chtMultiRegionSimpleFoam)

set(SOURCES
  fluid/compressibleCourantNo.C
  solid/solidRegionDiffNo.C
  chtMultiRegionFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfluidThermophysicalModels
  libsolidThermo
  libspecie
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
  libmeshTools
  libfiniteVolume
  libradiationModels
  libfvOptions
  libregionModels
  libsampling
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(./fluid)
include_directories(./solid)
include_directories(./include)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/sampling)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/specie)
include_directories(../../../../src/thermophysicalModels/solidThermo)
include_directories(../../../../src/turbulenceModels/compressible/turbulenceModel)
include_directories(../../../../src/thermophysicalModels/radiationModels)
include_directories(../../../../src/fvOptions)
include_directories(../../../../src/regionModels/regionModel)

add_executable(chtMultiRegionFoam ${SOURCES})

target_link_libraries(chtMultiRegionFoam ${LIBRARIES})

install(TARGETS chtMultiRegionFoam DESTINATION applications OPTIONAL)
