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

add_subdirectory(LTSReactingParcelFoam)
add_subdirectory(simpleReactingParcelFoam)

set(SOURCES
  reactingParcelFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libmeshTools
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
  liblagrangian
  liblagrangianIntermediate
  liblagrangianTurbulence
  libspecie
  libfluidThermophysicalModels
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libthermophysicalFunctions
  libreactionThermophysicalModels
  libSLGThermo
  libchemistryModel
  libradiationModels
  libODE
  libregionModels
  libsurfaceFilmModels
  libcombustionModels
  libfvOptions
  libsampling
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/meshTools/include.cmake)
include_directories(../../../../src/turbulenceModels/compressible/turbulenceModel)
include(../../../../src/lagrangian/basic/include.cmake)
include(../../../../src/lagrangian/intermediate/include.cmake)
include(../../../../src/lagrangian/coalCombustion/include.cmake)
include(../../../../src/lagrangian/distributionModels/include.cmake)
include(../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../../src/thermophysicalModels/thermophysicalFunctions/include.cmake)
include(../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../../src/thermophysicalModels/chemistryModel/include.cmake)
include(../../../../src/thermophysicalModels/radiationModels/include.cmake)
include(../../../../src/ODE/include.cmake)
include(../../../../src/regionModels/regionModel/include.cmake)
include(../../../../src/regionModels/surfaceFilmModels/include.cmake)
include(../../../../src/combustionModels/include.cmake)
include(../../../../src/fvOptions/include.cmake)
include(../../../../src/sampling/include.cmake)
include_directories(../../../../applications/solvers/combustion/reactingFoam)

add_executable(reactingParcelFoam ${SOURCES})

target_link_libraries(reactingParcelFoam ${LIBRARIES})

install(TARGETS reactingParcelFoam DESTINATION applications OPTIONAL)
