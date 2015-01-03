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
  alphaContactAngle/alphaContactAngle/alphaContactAngleFvPatchScalarField.C
  alphaContactAngle/constantAlphaContactAngle/constantAlphaContactAngleFvPatchScalarField.C
  alphaContactAngle/dynamicAlphaContactAngle/dynamicAlphaContactAngleFvPatchScalarField.C
  alphaContactAngle/timeVaryingAlphaContactAngle/timeVaryingAlphaContactAngleFvPatchScalarField.C
  alphaFixedPressure/alphaFixedPressureFvPatchScalarField.C
)

set(LIBRARIES
  libtwoPhaseMixture
  libinterfaceProperties
  libfiniteVolume
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/transportModels/twoPhaseMixture/include.cmake)
include(../../../src/transportModels/interfaceProperties/include.cmake)

add_library(libtwoPhaseProperties ${SOURCES})
set_target_properties(libtwoPhaseProperties PROPERTIES PREFIX "")

target_link_libraries(libtwoPhaseProperties ${LIBRARIES})

install(TARGETS libtwoPhaseProperties DESTINATION lib OPTIONAL)
