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
  surfaceMeshConvert.C
)

set(LIBRARIES
  libOpenFOAM
  libmeshTools
  libsurfMesh
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/surfMesh/include.cmake)

add_executable(surfaceMeshConvert ${SOURCES})

target_link_libraries(surfaceMeshConvert ${LIBRARIES})

install(TARGETS surfaceMeshConvert DESTINATION applications OPTIONAL)
