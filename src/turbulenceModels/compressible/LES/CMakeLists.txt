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
  LESModel/LESModel.C
  DESModel/DESModel.C
  GenEddyVisc/GenEddyVisc.C
  GenSGSStress/GenSGSStress.C
  Smagorinsky/Smagorinsky.C
  oneEqEddy/oneEqEddy.C
  lowReOneEqEddy/lowReOneEqEddy.C
  homogeneousDynOneEqEddy/homogeneousDynOneEqEddy.C
  DeardorffDiffStress/DeardorffDiffStress.C
  SpalartAllmaras/SpalartAllmaras.C
  compressibleLESdelta/compressibleLESdelta.C
  vanDriestDelta/vanDriestDelta.C
)

set(LIBRARIES
  libcompressibleTurbulenceModel
  libLESdeltas
  libLESfilters
  libfiniteVolume
  libmeshTools
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/turbulenceModels)
include_directories(../../../../src/turbulenceModels/LES/LESdeltas)
include_directories(../../../../src/turbulenceModels/LES/LESfilters)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/meshTools)

add_library(libcompressibleLESModels ${SOURCES})
set_target_properties(libcompressibleLESModels PROPERTIES PREFIX "")

target_link_libraries(libcompressibleLESModels ${LIBRARIES})

install(TARGETS libcompressibleLESModels DESTINATION lib OPTIONAL)
