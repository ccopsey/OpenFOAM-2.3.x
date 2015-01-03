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

include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/.)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldAverage/fieldAverage)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldAverage/fieldAverageFunctionObject)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldAverage/fieldAverageItem)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldCoordinateSystemTransform)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldMinMax)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldValues/cellSource)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldValues/faceSource)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldValues/fieldValue)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/fieldValues/fieldValueDelta)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/nearWallFields)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/processorField)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/readFields)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/regionSizeDistribution)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/streamLine)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/surfaceInterpolateFields)
include_directories(${PROJECT_SOURCE_DIR}/src/postProcessing/functionObjects/field/wallBoundedStreamLine)
