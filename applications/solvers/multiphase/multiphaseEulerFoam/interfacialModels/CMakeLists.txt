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
  dragModels/dragModel/dragModel.C
  dragModels/dragModel/newDragModel.C
  dragModels/Ergun/Ergun.C
  dragModels/GidaspowErgunWenYu/GidaspowErgunWenYu.C
  dragModels/GidaspowSchillerNaumann/GidaspowSchillerNaumann.C
  dragModels/SchillerNaumann/SchillerNaumann.C
  dragModels/Gibilaro/Gibilaro.C
  dragModels/WenYu/WenYu.C
  dragModels/SyamlalOBrien/SyamlalOBrien.C
  dragModels/blended/blended.C
  dragModels/interface/interface.C
  heatTransferModels/heatTransferModel/heatTransferModel.C
  heatTransferModels/heatTransferModel/newHeatTransferModel.C
  heatTransferModels/RanzMarshall/RanzMarshall.C
)

set(LIBRARIES
  libmultiphaseSystem
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include(../multiphaseSystem/include.cmake)

add_library(libcompressibleMultiphaseEulerianInterfacialModels ${SOURCES})
set_target_properties(libcompressibleMultiphaseEulerianInterfacialModels PROPERTIES PREFIX "")

target_link_libraries(libcompressibleMultiphaseEulerianInterfacialModels ${LIBRARIES})

install(TARGETS libcompressibleMultiphaseEulerianInterfacialModels DESTINATION lib OPTIONAL)
