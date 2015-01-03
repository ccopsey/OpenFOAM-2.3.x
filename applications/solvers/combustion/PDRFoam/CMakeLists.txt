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
  XiModels/XiModel/XiModel.C
  XiModels/XiModel/XiModelNew.C
  XiModels/fixed/fixed.C
  XiModels/algebraic/algebraic.C
  XiModels/transport/transport.C
  XiModels/XiEqModels/XiEqModel/XiEqModel.C
  XiModels/XiEqModels/XiEqModel/XiEqModelNew.C
  XiModels/XiEqModels/Gulder/Gulder.C
  XiModels/XiEqModels/instabilityXiEq/instabilityXiEq.C
  XiModels/XiEqModels/SCOPEBlendXiEq/SCOPEBlendXiEq.C
  XiModels/XiEqModels/SCOPEXiEq/SCOPEXiEq.C
  XiModels/XiGModels/XiGModel/XiGModel.C
  XiModels/XiGModels/XiGModel/XiGModelNew.C
  XiModels/XiGModels/KTS/KTS.C
  XiModels/XiGModels/instabilityG/instabilityG.C
  PDRModels/turbulence/PDRkEpsilon/PDRkEpsilon.C
  PDRModels/dragModels/PDRDragModel/PDRDragModel.C
  PDRModels/dragModels/PDRDragModel/PDRDragModelNew.C
  PDRModels/dragModels/basic/basic.C
  PDRModels/XiEqModels/basicXiSubXiEq/basicXiSubXiEq.C
  PDRModels/XiGModels/basicXiSubG/basicXiSubG.C
  laminarFlameSpeed/SCOPE/SCOPELaminarFlameSpeed.C
  PDRFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libengine
  libmeshTools
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libfluidThermophysicalModels
  libreactionThermophysicalModels
  libspecie
  liblaminarFlameSpeedModels
  libfiniteVolume
  libdynamicFvMesh
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include_directories(XiModels/XiModel)
include_directories(XiModels/XiEqModels/XiEqModel)
include_directories(XiModels/XiGModels/XiGModel)
include_directories(PDRModels/dragModels/PDRDragModel)
include_directories(laminarFlameSpeed/SCOPE)
include(../../../../src/engine/include.cmake)
include(../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../src/turbulenceModels/compressible/RAS/include.cmake)
include_directories(../../../../src/turbulenceModels)
include(../../../../src/thermophysicalModels/laminarFlameSpeed/include.cmake)
include(../../../../src/dynamicFvMesh/include.cmake)
include(../../../../src/dynamicMesh/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/triSurface/include.cmake)

add_executable(PDRFoam ${SOURCES})

target_link_libraries(PDRFoam ${LIBRARIES})

install(TARGETS PDRFoam DESTINATION applications OPTIONAL)
