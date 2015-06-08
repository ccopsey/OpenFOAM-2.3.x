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

if (NOT SCOTCH_LIBRARY OR NOT SCOTCH_ERREXIT_LIBRARY OR NOT PTSCOTCH_LIBRARY OR NOT PTSCOTCH_ERREXIT_LIBRARY OR NOT SCOTCH_INCLUDE_DIR)

  find_path(SCOTCH_INCLUDE_DIR
    NAMES "scotch.h"
    HINTS ${SCOTCH_INCLUDE_DIR} ${SCOTCH_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
    PATH_SUFFIXES scotch
  )

  if (NOT SCOTCH_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate SCOTCH include directory")
  endif()

  find_library(SCOTCH_LIBRARY
    NAMES "scotch"
    HINTS ${SCOTCH_LIBRARY_DIR} ${SCOTCH_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  find_library(SCOTCH_ERREXIT_LIBRARY
    NAMES "scotcherrexit"
    HINTS ${SCOTCH_LIBRARY_DIR} ${SCOTCH_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  find_library(PTSCOTCH_LIBRARY
    NAMES "ptscotch"
    HINTS ${SCOTCH_LIBRARY_DIR} ${SCOTCH_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  find_library(PTSCOTCH_ERREXIT_LIBRARY
    NAMES "ptscotcherrexit"
    HINTS ${SCOTCH_LIBRARY_DIR} ${SCOTCH_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT SCOTCH_LIBRARY OR NOT SCOTCH_ERREXIT_LIBRARY OR NOT PTSCOTCH_LIBRARY OR NOT PTSCOTCH_ERREXIT_LIBRARY)
    message(SEND_ERROR "Can not locate SCOTCH libraries")
  endif()    

endif()

find_package_handle_standard_args(SCOTCH
  DEFAULT_MSG
  SCOTCH_LIBRARY
  SCOTCH_ERREXIT_LIBRARY
  PTSCOTCH_LIBRARY
  PTSCOTCH_ERREXIT_LIBRARY
  SCOTCH_INCLUDE_DIR
)
