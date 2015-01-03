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
  liquidMixtureProperties/liquidMixtureProperties.C
)

set(LIBRARIES
  libliquidProperties
  libthermophysicalFunctions
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/specie)
include_directories(../../../../src/thermophysicalModels/properties/liquidProperties)
include_directories(../../../../src/thermophysicalModels/thermophysicalFunctions)

add_library(libliquidMixtureProperties ${SOURCES})
set_target_properties(libliquidMixtureProperties PROPERTIES PREFIX "")

target_link_libraries(libliquidMixtureProperties ${LIBRARIES})

install(TARGETS libliquidMixtureProperties DESTINATION lib OPTIONAL)
