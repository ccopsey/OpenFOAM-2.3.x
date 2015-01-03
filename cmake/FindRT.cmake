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

include(FindPackageHandleStandardArgs)

if(NOT RT_LIBRARY OR NOT RT_INCLUDE_DIR)

  find_path(RT_INCLUDE_DIR
    NAMES "time.h"
    HINTS ${RT_INCLUDE_DIR} ${RT_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
  )

  if(NOT RT_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate RT include directory")
  endif()

  find_library(RT_LIBRARY
    NAMES "rt"
    HINTS ${RT_LIBRARY_DIR} ${RT_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT RT_LIBRARY)
    message(SEND_ERROR "Can not locate RT library")
  endif()    

endif()

find_package_handle_standard_args(RT
  DEFAULT_MSG
  RT_LIBRARY
  RT_INCLUDE_DIR
)
