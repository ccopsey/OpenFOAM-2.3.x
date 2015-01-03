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
  codedFunctionObject/codedFunctionObject.C
  CourantNo/CourantNo.C
  CourantNo/CourantNoFunctionObject.C
  Lambda2/Lambda2.C
  Lambda2/Lambda2FunctionObject.C
  Peclet/Peclet.C
  Peclet/PecletFunctionObject.C
  Q/Q.C
  Q/QFunctionObject.C
  blendingFactor/blendingFactor.C
  blendingFactor/blendingFactorFunctionObject.C
  DESModelRegions/DESModelRegions.C
  DESModelRegions/DESModelRegionsFunctionObject.C
  dsmcFields/dsmcFields.C
  dsmcFields/dsmcFieldsFunctionObject.C
  pressureTools/pressureTools.C
  pressureTools/pressureToolsFunctionObject.C
  scalarTransport/scalarTransport.C
  scalarTransport/scalarTransportFunctionObject.C
  timeActivatedFileUpdate/timeActivatedFileUpdate.C
  timeActivatedFileUpdate/timeActivatedFileUpdateFunctionObject.C
  turbulenceFields/turbulenceFields.C
  turbulenceFields/turbulenceFieldsFunctionObject.C
  vorticity/vorticity.C
  vorticity/vorticityFunctionObject.C
  wallShearStress/wallShearStress.C
  wallShearStress/wallShearStressFunctionObject.C
  yPlusLES/yPlusLES.C
  yPlusLES/yPlusLESFunctionObject.C
  yPlusRAS/yPlusRAS.C
  yPlusRAS/yPlusRASFunctionObject.C
  setTimeStep/setTimeStepFunctionObject.C
)

set(LIBRARIES
  libfiniteVolume
  libfvOptions
  libmeshTools
  libsampling
  liblagrangian
  libdsmc
  libincompressibleTransportModels
  libcompressibleRASModels
  libincompressibleRASModels
  libcompressibleLESModels
  libincompressibleLESModels
  libfluidThermophysicalModels
)

include_directories(.)
include_directories(../../../../src/OpenFOAM)
include_directories(../../../../src/OSspecific/POSIX)
include_directories(../../../../src/finiteVolume)
include_directories(../../../../src/fvOptions)
include_directories(../../../../src/lagrangian/basic)
include_directories(../../../../src/lagrangian/dsmc)
include_directories(../../../../src/meshTools)
include_directories(../../../../src/sampling)
include_directories(../../../../src/transportModels)
include_directories(../../../../src/turbulenceModels)
include_directories(../../../../src/turbulenceModels/compressible/RAS/derivedFvPatchFields/wallFunctions/mutWallFunctions)
include_directories(../../../../src/turbulenceModels/incompressible/RAS/derivedFvPatchFields/wallFunctions/nutWallFunctions)
include_directories(../../../../src/thermophysicalModels/basic)
include_directories(../../../../src/turbulenceModels/LES/LESdeltas)

add_library(libutilityFunctionObjects ${SOURCES})
set_target_properties(libutilityFunctionObjects PROPERTIES PREFIX "")

target_link_libraries(libutilityFunctionObjects ${LIBRARIES})

install(TARGETS libutilityFunctionObjects DESTINATION lib OPTIONAL)
