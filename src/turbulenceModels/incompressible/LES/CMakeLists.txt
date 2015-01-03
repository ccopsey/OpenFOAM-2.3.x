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
  incompressibleLESdelta/incompressibleLESdelta.C
  vanDriestDelta/vanDriestDelta.C
  LESModel/LESModel.C
  DESModel/DESModel.C
  GenEddyVisc/GenEddyVisc.C
  GenSGSStress/GenSGSStress.C
  laminar/laminar.C
  SpalartAllmaras/SpalartAllmaras.C
  SpalartAllmarasDDES/SpalartAllmarasDDES.C
  SpalartAllmarasIDDES/SpalartAllmarasIDDES.C
  SpalartAllmarasIDDES/IDDESDelta/IDDESDelta.C
  oneEqEddy/oneEqEddy.C
  homogeneousDynOneEqEddy/homogeneousDynOneEqEddy.C
  dynOneEqEddy/dynOneEqEddy.C
  Smagorinsky/Smagorinsky.C
  homogeneousDynSmagorinsky/homogeneousDynSmagorinsky.C
  LRRDiffStress/LRRDiffStress.C
  DeardorffDiffStress/DeardorffDiffStress.C
  spectEddyVisc/spectEddyVisc.C
  dynLagrangian/dynLagrangian.C
  scaleSimilarity/scaleSimilarity.C
  mixedSmagorinsky/mixedSmagorinsky.C
  kOmegaSSTSAS/kOmegaSSTSAS.C
)

set(LIBRARIES
  libincompressibleTurbulenceModel
  libLESdeltas
  libLESfilters
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include_directories(../../../../src/turbulenceModels)
include(../../../../src/turbulenceModels/LES/LESdeltas/include.cmake)
include(../../../../src/turbulenceModels/LES/LESfilters/include.cmake)
include_directories(../../../../src/transportModels)
include(../../../../src/meshTools/include.cmake)

add_library(libincompressibleLESModels ${SOURCES})
set_target_properties(libincompressibleLESModels PROPERTIES PREFIX "")

target_link_libraries(libincompressibleLESModels ${LIBRARIES})

install(TARGETS libincompressibleLESModels DESTINATION lib OPTIONAL)
