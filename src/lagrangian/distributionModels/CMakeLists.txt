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
  distributionModel/distributionModel.C
  distributionModel/distributionModelNew.C
  exponential/exponential.C
  fixedValue/fixedValue.C
  general/general.C
  multiNormal/multiNormal.C
  normal/normal.C
  RosinRammler/RosinRammler.C
  uniform/uniform.C
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)

add_library(libdistributionModels ${SOURCES})
set_target_properties(libdistributionModels PROPERTIES PREFIX "")

install(TARGETS libdistributionModels DESTINATION lib OPTIONAL)
