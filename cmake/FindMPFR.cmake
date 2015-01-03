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

if (NOT MPFR_LIBRARY OR NOT MPFR_INCLUDE_DIR)

  find_path(MPFR_INCLUDE_DIR
    NAMES "mpfr.h"
    HINTS ${MPFR_INCLUDE_DIR} ${MPFR_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
  )

  if (NOT MPFR_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate MPFR include directory")
  endif()

  find_library(MPFR_LIBRARY
    NAMES "mpfr"
    HINTS ${MPFR_LIBRARY_DIR} ${MPFR_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT MPFR_LIBRARY)
    message(SEND_ERROR "Can not locate MPFR library")
  endif()    

endif()

find_package_handle_standard_args(MPFR
  DEFAULT_MSG
  MPFR_LIBRARY
  MPFR_INCLUDE_DIR
)
