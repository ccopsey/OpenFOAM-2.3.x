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
  fireFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libfvOptions
  libmeshTools
  libsampling
  libcompressibleRASModels
  libcompressibleLESModels
  libspecie
  libfluidThermophysicalModels
  libsolidProperties
  libsolidMixtureProperties
  libthermophysicalFunctions
  libreactionThermophysicalModels
  libSLGThermo
  libchemistryModel
  libsolidChemistryModel
  libcombustionModels
  libregionModels
  libradiationModels
  libsurfaceFilmModels
  libsurfaceFilmDerivedFvPatchFields
  libpyrolysisModels
  libregionCoupling
  liblagrangianIntermediate
  liblagrangianTurbulence
  libODE
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/fvOptions)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/sampling)
include_directories(../../../../src/turbulenceModels/compressible/turbulenceModel)
include_directories(../../../../src/lagrangian/distributionModels)
include_directories(../../../../src/thermophysicalModels/specie)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/solidThermo)
include_directories(../../../../src/thermophysicalModels/chemistryModel)
include_directories(../../../../src/thermophysicalModels/solidChemistryModel)
include_directories(../../../../src/combustionModels)
include_directories(../../../../src/thermophysicalModels/properties/solidProperties)
include_directories(../../../../src/thermophysicalModels/properties/solidMixtureProperties)
include_directories(../../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../../src/thermophysicalModels/properties/liquidMixtureProperties)
include_directories(../../../../src/thermophysicalModels/thermophysicalFunctions)
include_directories(../../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../../src/thermophysicalModels/SLGThermo)
include_directories(../../../../src/thermophysicalModels/radiationModels)
include_directories(../../../../src/combustionModels)
include_directories(../../../../src/regionModels/regionModel)
include_directories(../../../../src/regionModels/surfaceFilmModels)
include_directories(../../../../src/regionModels/pyrolysisModels)
include_directories(../../../../src/lagrangian/basic)
include_directories(../../../../src/lagrangian/intermediate)
include_directories(../../../../src/ODE)

add_executable(fireFoam ${SOURCES})

target_link_libraries(fireFoam ${LIBRARIES})

install(TARGETS fireFoam DESTINATION applications OPTIONAL)
