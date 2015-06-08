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
  viscosityModels/viscosityModel/viscosityModel.C
  viscosityModels/viscosityModel/viscosityModelNew.C
  viscosityModels/Newtonian/Newtonian.C
  viscosityModels/powerLaw/powerLaw.C
  viscosityModels/CrossPowerLaw/CrossPowerLaw.C
  viscosityModels/BirdCarreau/BirdCarreau.C
  viscosityModels/HerschelBulkley/HerschelBulkley.C
  transportModel/transportModel.C
  singlePhaseTransportModel/singlePhaseTransportModel.C
  incompressibleTwoPhaseMixture/incompressibleTwoPhaseMixture.C
)

set(LIBRARIES
  libtwoPhaseMixture
  libfiniteVolume
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../src/finiteVolume/include.cmake)
include(../twoPhaseMixture/include.cmake)
include(../../../src/meshTools/include.cmake)

add_library(libincompressibleTransportModels ${SOURCES})
set_target_properties(libincompressibleTransportModels PROPERTIES PREFIX "")

target_link_libraries(libincompressibleTransportModels ${LIBRARIES})

install(TARGETS libincompressibleTransportModels DESTINATION lib OPTIONAL)
