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
  thermophysicalFunction/thermophysicalFunction.C
  NSRDSfunctions/NSRDSfunc0/NSRDSfunc0.C
  NSRDSfunctions/NSRDSfunc1/NSRDSfunc1.C
  NSRDSfunctions/NSRDSfunc2/NSRDSfunc2.C
  NSRDSfunctions/NSRDSfunc3/NSRDSfunc3.C
  NSRDSfunctions/NSRDSfunc4/NSRDSfunc4.C
  NSRDSfunctions/NSRDSfunc5/NSRDSfunc5.C
  NSRDSfunctions/NSRDSfunc6/NSRDSfunc6.C
  NSRDSfunctions/NSRDSfunc7/NSRDSfunc7.C
  NSRDSfunctions/NSRDSfunc14/NSRDSfunc14.C
  APIfunctions/APIdiffCoefFunc/APIdiffCoefFunc.C
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)

add_library(libthermophysicalFunctions ${SOURCES})
set_target_properties(libthermophysicalFunctions PROPERTIES PREFIX "")

install(TARGETS libthermophysicalFunctions DESTINATION lib OPTIONAL)
