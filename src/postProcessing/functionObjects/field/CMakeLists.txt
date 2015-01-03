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
  fieldAverage/fieldAverage/fieldAverage.C
  fieldAverage/fieldAverageItem/fieldAverageItem.C
  fieldAverage/fieldAverageItem/fieldAverageItemIO.C
  fieldAverage/fieldAverageFunctionObject/fieldAverageFunctionObject.C
  fieldCoordinateSystemTransform/fieldCoordinateSystemTransform.C
  fieldCoordinateSystemTransform/fieldCoordinateSystemTransformFunctionObject.C
  fieldMinMax/fieldMinMax.C
  fieldMinMax/fieldMinMaxFunctionObject.C
  fieldValues/fieldValue/fieldValue.C
  fieldValues/fieldValue/fieldValueNew.C
  fieldValues/fieldValueDelta/fieldValueDelta.C
  fieldValues/fieldValueDelta/fieldValueDeltaFunctionObject.C
  fieldValues/faceSource/faceSource.C
  fieldValues/faceSource/faceSourceFunctionObject.C
  fieldValues/cellSource/cellSource.C
  fieldValues/cellSource/cellSourceFunctionObject.C
  nearWallFields/nearWallFields.C
  nearWallFields/nearWallFieldsFunctionObject.C
  nearWallFields/findCellParticle.C
  nearWallFields/findCellParticleCloud.C
  processorField/processorField.C
  processorField/processorFieldFunctionObject.C
  readFields/readFields.C
  readFields/readFieldsFunctionObject.C
  streamLine/streamLine.C
  streamLine/streamLineParticle.C
  streamLine/streamLineParticleCloud.C
  streamLine/streamLineFunctionObject.C
  wallBoundedStreamLine/wallBoundedStreamLine.C
  wallBoundedStreamLine/wallBoundedStreamLineFunctionObject.C
  wallBoundedStreamLine/wallBoundedStreamLineParticle.C
  wallBoundedStreamLine/wallBoundedStreamLineParticleCloud.C
  wallBoundedStreamLine/wallBoundedParticle.C
  surfaceInterpolateFields/surfaceInterpolateFields.C
  surfaceInterpolateFields/surfaceInterpolateFieldsFunctionObject.C
  regionSizeDistribution/regionSizeDistribution.C
  regionSizeDistribution/regionSizeDistributionFunctionObject.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  libsurfMesh
  liblagrangian
  libfileFormats
  libsampling
  libsurfMesh
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/lagrangian/basic/include.cmake)
include(../../../../src/fileFormats/include.cmake)
include(../../../../src/sampling/include.cmake)
include(../../../../src/surfMesh/include.cmake)

add_library(libfieldFunctionObjects ${SOURCES})
set_target_properties(libfieldFunctionObjects PROPERTIES PREFIX "")

target_link_libraries(libfieldFunctionObjects ${LIBRARIES})

install(TARGETS libfieldFunctionObjects DESTINATION lib OPTIONAL)
