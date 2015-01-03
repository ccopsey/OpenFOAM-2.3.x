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
  ./edgeMesh.C
  ./edgeMeshIO.C
  ./edgeMeshNew.C
  ./edgeMeshFormats/edgeMeshFormatsCore.C
  ./edgeMeshFormats/edgeMesh/edgeMeshFormat.C
  ./edgeMeshFormats/edgeMesh/edgeMeshFormatRunTime.C
  ./edgeMeshFormats/extendedFeatureEdgeMesh/extendedFeatureEdgeMeshFormat.C
  ./edgeMeshFormats/extendedFeatureEdgeMesh/extendedFeatureEdgeMeshFormatRunTime.C
  ./edgeMeshFormats/nas/NASedgeFormat.C
  ./edgeMeshFormats/nas/NASedgeFormatRunTime.C
  ./edgeMeshFormats/obj/OBJedgeFormat.C
  ./edgeMeshFormats/obj/OBJedgeFormatRunTime.C
  ./edgeMeshFormats/starcd/STARCDedgeFormat.C
  ./edgeMeshFormats/starcd/STARCDedgeFormatRunTime.C
  ./edgeMeshFormats/vtk/VTKedgeFormat.C
  ./edgeMeshFormats/vtk/VTKedgeFormatRunTime.C
  ./featureEdgeMesh/featureEdgeMesh.C
  ./extendedEdgeMesh/extendedEdgeMesh.C
  ./extendedEdgeMesh/extendedEdgeMeshNew.C
  ./extendedEdgeMesh/extendedEdgeMeshFormats/extendedEdgeMeshFormat/extendedEdgeMeshFormat.C
  ./extendedEdgeMesh/extendedEdgeMeshFormats/extendedEdgeMeshFormat/extendedEdgeMeshFormatRunTime.C
  ./extendedEdgeMesh/extendedFeatureEdgeMesh/extendedFeatureEdgeMesh.C
)

set(LIBRARIES
  libtriSurface
  libmeshTools
  libfileFormats
  libsurfMesh
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/fileFormats/include.cmake)
include(../../src/surfMesh/include.cmake)
include(../../src/triSurface/include.cmake)
include(../../src/meshTools/include.cmake)

add_library(libedgeMesh ${SOURCES})
set_target_properties(libedgeMesh PROPERTIES PREFIX "")

target_link_libraries(libedgeMesh ${LIBRARIES})

install(TARGETS libedgeMesh DESTINATION lib OPTIONAL)
