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
  mixtureViscosityModel/mixtureViscosityModel.C
  mixtureViscosityModel/mixtureViscosityModelNew.C
  plastic/plastic.C
  BinghamPlastic/BinghamPlastic.C
  slurry/slurry.C
)

set(LIBRARIES
  libtwoPhaseMixture
  libincompressibleTransportModels
  libfiniteVolume
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(../incompressibleTwoPhaseInteractingMixture)
include_directories(../../../../../src/transportModels)
include(../../../../../src/transportModels/twoPhaseMixture/include.cmake)
include(../../../../../src/transportModels/incompressible/include.cmake)

add_library(libdriftFluxTransportModels ${SOURCES})
set_target_properties(libdriftFluxTransportModels PROPERTIES PREFIX "")

target_link_libraries(libdriftFluxTransportModels ${LIBRARIES})

install(TARGETS libdriftFluxTransportModels DESTINATION lib OPTIONAL)
