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

cmake_minimum_required(VERSION 2.8)

project(ccFOAM)

set(CMAKE_SKIP_INSTALL_ALL_DEPENDENCY ON)
set(CMAKE_SKIP_RPATH ON)

option(BUILD_SHARED_LIBS ON)

option(FOAM_DOUBLE_PRECISION 
  "Compile ${PROJECT_NAME} with double precision floating point arithmetics."
  ON)
mark_as_advanced(FOAM_DOUBLE_PRECISION)
if(FOAM_DOUBLE_PRECISION)
  set(FOAM_PRECISION WM_DP)
else()
  set(FOAM_PRECISION WM_SP)
endif()

set(CMAKE_MODULE_PATH
  ${CMAKE_MODULE_PATH}
  ${CMAKE_SOURCE_DIR}/cmake
)

find_package(BoostSystem)
find_package(BoostThread)
find_package(CGAL)
find_package(FLEX REQUIRED)
find_package(GMP)
find_package(METIS REQUIRED)
find_package(MGRIDGEN REQUIRED)
find_package(MPFR)
find_package(MPI REQUIRED)
find_package(PARMETIS REQUIRED)
find_package(PARMGRIDGEN REQUIRED)
find_package(RT)
find_package(SCOTCH REQUIRED)
find_package(ZLIB REQUIRED)

add_definitions(
  -D${FOAM_PRECISION}
  -DNoRepository
  -DCGAL_NO_DEPRECATION_WARNINGS
)

add_subdirectory(src)
add_subdirectory(applications)
add_subdirectory(etc)
