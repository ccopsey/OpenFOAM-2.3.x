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
  ensight/file/ensightFile.C
  ensight/file/ensightGeoFile.C
  ensight/part/ensightPart.C
  ensight/part/ensightPartIO.C
  ensight/part/ensightPartCells.C
  ensight/part/ensightPartFaces.C
  ensight/part/ensightParts.C
  meshTables/boundaryRegion.C
  meshTables/cellTable.C
  meshReader/meshReader.C
  meshReader/meshReaderAux.C
  meshReader/calcPointCells.C
  meshReader/createPolyCells.C
  meshReader/createPolyBoundary.C
  meshReader/starcd/STARCDMeshReader.C
  meshWriter/meshWriter.C
  meshWriter/starcd/STARCDMeshWriter.C
  polyDualMesh/polyDualMesh.C
)

set(LIBRARIES
  libfileFormats
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/fileFormats/include.cmake)
include(../../src/meshTools/include.cmake)

add_library(libconversion ${SOURCES})
set_target_properties(libconversion PROPERTIES PREFIX "")

target_link_libraries(libconversion ${LIBRARIES})

install(TARGETS libconversion DESTINATION lib OPTIONAL)
