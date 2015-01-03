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
  alphatFilmWallFunction/alphatFilmWallFunctionFvPatchScalarField.C
  mutkFilmWallFunction/mutkFilmWallFunctionFvPatchScalarField.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  libfluidThermophysicalModels
  libspecie
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libreactionThermophysicalModels
  libSLGThermo
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
  libregionModels
  libsurfaceFilmModels
)

include_directories(.)
include_directories(../../../../../src/OpenFOAM)
include_directories(../../../../../src/OSspecific/POSIX)
include_directories(../../../../../src/finiteVolume)
include_directories(../../../../../src/meshTools)
include_directories(../../../../../src/thermophysicalModels/basic)
include_directories(../../../../../src/thermophysicalModels/specie)
include_directories(../../../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../../../src/thermophysicalModels/properties/liquidMixtureProperties)
include_directories(../../../../../src/thermophysicalModels/properties/solidProperties)
include_directories(../../../../../src/thermophysicalModels/properties/solidMixtureProperties)
include_directories(../../../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../../../src/thermophysicalModels/SLGThermo)
include_directories(../../../../../src/turbulenceModels)
include_directories(../../../../../src/turbulenceModels/compressible/turbulenceModel)
include_directories(../../../../../src/turbulenceModels/compressible/LES)
include_directories(../../../../../src/turbulenceModels/compressible/RAS)
include_directories(../../../../../src/regionModels/regionModel)
include_directories(../../../../../src/regionModels/surfaceFilmModels)

add_library(libsurfaceFilmDerivedFvPatchFields ${SOURCES})
set_target_properties(libsurfaceFilmDerivedFvPatchFields PROPERTIES PREFIX "")

target_link_libraries(libsurfaceFilmDerivedFvPatchFields ${LIBRARIES})

install(TARGETS libsurfaceFilmDerivedFvPatchFields DESTINATION lib OPTIONAL)
