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

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(XiModels/XiModel)
include_directories(XiModels/XiEqModels/XiEqModel)
include_directories(XiModels/XiGModels/XiGModel)
include_directories(PDRModels/dragModels/PDRDragModel)
include_directories(laminarFlameSpeed/SCOPE)
include_directories(../../../../src/engine)
include_directories(../../../../src/thermophysicalModels/specie)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/thermophysicalModels/reactionThermo)
include_directories(../../../../src/turbulenceModels/compressible/RAS)
include_directories(../../../../src/turbulenceModels)
include_directories(../../../../src/thermophysicalModels/laminarFlameSpeed)
include_directories(../../../../src/dynamicFvMesh)
include_directories(../../../../src/dynamicMesh)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/triSurface)

add_executable(PDRFoam ${SOURCES})

target_link_libraries(PDRFoam ${LIBRARIES})

install(TARGETS PDRFoam DESTINATION applications OPTIONAL)
