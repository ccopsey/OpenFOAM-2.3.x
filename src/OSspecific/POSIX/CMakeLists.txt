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
  signals/sigFpe.C
  signals/sigSegv.C
  signals/sigInt.C
  signals/sigQuit.C
  signals/sigStopAtWriteNow.C
  signals/sigWriteNow.C
  regExp.C
  timer.C
  fileStat.C
  POSIX.C
  cpuTime/cpuTime.C
  clockTime/clockTime.C
  memInfo/memInfo.C
  fileMonitor.C
)

if(SunOS64)
  set(SOURCES
    ${SOURCES}
    dummyPrintStack.C
  )
  else(SunOS64)
  set(SOURCES
    ${SOURCES}
    printStack.C
  )
endif(SunOS64)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)

add_library(libOSspecific ${SOURCES})
set_target_properties(libOSspecific PROPERTIES PREFIX "")

install(TARGETS libOSspecific DESTINATION lib OPTIONAL)
