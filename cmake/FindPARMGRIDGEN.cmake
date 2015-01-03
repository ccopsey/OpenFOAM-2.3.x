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

if (NOT PARMGRIDGEN_LIBRARY OR NOT PARMGRIDGEN_INCLUDE_DIR)

  find_path(PARMGRIDGEN_INCLUDE_DIR
    NAMES "parmgridgen.h"
    HINTS ${PARMGRIDGEN_INCLUDE_DIR} ${PARMGRIDGEN_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
  )

  if (NOT PARMGRIDGEN_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate PARMGRIDGEN include directory")
  endif()

  find_library(PARMGRIDGEN_LIBRARY
    NAMES "parmgrid"
    HINTS ${PARMGRIDGEN_LIBRARY_DIR} ${PARMGRIDGEN_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT PARMGRIDGEN_LIBRARY)
    message(SEND_ERROR "Can not locate PARMGRIDGEN library")
  endif()    

endif()

find_package_handle_standard_args(PARMGRIDGEN
  DEFAULT_MSG
  PARMGRIDGEN_LIBRARY
  PARMGRIDGEN_INCLUDE_DIR
)
