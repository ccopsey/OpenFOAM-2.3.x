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
  decomposePar.C
  domainDecomposition.C
  domainDecompositionMesh.C
  domainDecompositionDistribute.C
  dimFieldDecomposer.C
  pointFieldDecomposer.C
  lagrangianFieldDecomposer.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libdecompose
  libgenericPatchFields
  libdecompositionMethods
  libmetisDecomp
  libscotchDecomp
  liblagrangian
  libmeshTools
  libregionModels
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/parallel/decompose/decompose)
include_directories(../../../../src/parallel/decompose/decompositionMethods)
include_directories(../../../../src/lagrangian/basic)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/regionModels/regionModel)

add_executable(decomposePar ${SOURCES})

target_link_libraries(decomposePar ${LIBRARIES})

install(TARGETS decomposePar DESTINATION applications OPTIONAL)
