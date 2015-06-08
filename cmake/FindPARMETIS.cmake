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

if (NOT PARMETIS_LIBRARY OR NOT PARMETIS_INCLUDE_DIR)

  find_path(PARMETIS_INCLUDE_DIR
    NAMES "parmetis.h"
    HINTS ${PARMETIS_INCLUDE_DIR} ${PARMETIS_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
    PATH_SUFFIXES parmetis
  )

  if (NOT PARMETIS_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate PARMETIS include directory")
  endif()

  find_library(PARMETIS_LIBRARY
    NAMES "parmetis"
    HINTS ${PARMETIS_LIBRARY_DIR} ${PARMETIS_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT PARMETIS_LIBRARY)
    message(SEND_ERROR "Can not locate PARMETIS library")
  endif()    

endif()

find_package_handle_standard_args(PARMETIS
  DEFAULT_MSG
  PARMETIS_LIBRARY
  PARMETIS_INCLUDE_DIR
)
