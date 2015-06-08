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
  calcType/calcType.C
  calcType/calcTypeNew.C
  field/components/components.C
  field/mag/mag.C
  field/magSqr/magSqr.C
  field/magGrad/magGrad.C
  field/div/div.C
  field/randomise/randomise.C
  field/interpolate/interpolate.C
  basic/addSubtract/addSubtract.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/meshTools/include.cmake)

add_library(libfoamCalcFunctions ${SOURCES})
set_target_properties(libfoamCalcFunctions PROPERTIES PREFIX "")

target_link_libraries(libfoamCalcFunctions ${LIBRARIES})

install(TARGETS libfoamCalcFunctions DESTINATION lib OPTIONAL)
