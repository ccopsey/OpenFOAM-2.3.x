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
  clouds/baseClasses/sprayCloud/sprayCloud.C
  parcels/derived/basicSprayParcel/defineBasicSprayParcel.C
  parcels/derived/basicSprayParcel/makeBasicSprayParcelSubmodels.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  liblagrangian
  liblagrangianIntermediate
  liblagrangianTurbulence
  libdistributionModels
  libspecie
  libfluidThermophysicalModels
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libreactionThermophysicalModels
  libSLGThermo
  libradiationModels
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
  libLESdeltas
  libincompressibleTransportModels
  libregionModels
  libsurfaceFilmModels
  libdynamicFvMesh
  libsampling
)

include_directories(.)
include_directories(../../../src/OpenFOAM)
include_directories(../../../src/OSspecific/POSIX)
include_directories(../../../src/finiteVolume)
include_directories(../../../src/meshTools)
include_directories(../../../src/lagrangian/basic)
include_directories(../../../src/lagrangian/intermediate)
include_directories(../../../src/lagrangian/distributionModels)
include_directories(../../../src/lagrangian/turbulence)
include_directories(../../../src/thermophysicalModels/specie)
include_directories(../../../src/thermophysicalModels/basic)
include_directories(../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../src/thermophysicalModels/properties/liquidMixtureProperties)
include_directories(../../../src/thermophysicalModels/properties/solidProperties)
include_directories(../../../src/thermophysicalModels/properties/solidMixtureProperties)
include_directories(../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../src/thermophysicalModels/SLGThermo)
include_directories(../../../src/thermophysicalModels/radiationModels)
include_directories(../../../src/turbulenceModels)
include_directories(../../../src/transportModels)
include_directories(../../../src/regionModels/regionModel)
include_directories(../../../src/regionModels/surfaceFilmModels)
include_directories(../../../src/dynamicFvMesh)
include_directories(../../../src/sampling)

add_library(liblagrangianSpray ${SOURCES})
set_target_properties(liblagrangianSpray PROPERTIES PREFIX "")

target_link_libraries(liblagrangianSpray ${LIBRARIES})

install(TARGETS liblagrangianSpray DESTINATION lib OPTIONAL)
