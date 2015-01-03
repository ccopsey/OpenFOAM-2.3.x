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
  probes/probes.C
  probes/patchProbes.C
  probes/probesGrouping.C
  probes/probesFunctionObject/probesFunctionObject.C
  sampledSet/circle/circleSet.C
  sampledSet/cloud/cloudSet.C
  sampledSet/patchCloud/patchCloudSet.C
  sampledSet/polyLine/polyLineSet.C
  sampledSet/face/faceOnlySet.C
  sampledSet/midPoint/midPointSet.C
  sampledSet/midPointAndFace/midPointAndFaceSet.C
  sampledSet/patchSeed/patchSeedSet.C
  sampledSet/sampledSet/sampledSet.C
  sampledSet/sampledSets/sampledSets.C
  sampledSet/sampledSets/sampledSetsGrouping.C
  sampledSet/sampledSetsFunctionObject/sampledSetsFunctionObject.C
  sampledSet/triSurfaceMeshPointSet/triSurfaceMeshPointSet.C
  sampledSet/uniform/uniformSet.C
  sampledSet/array/arraySet.C
  cuttingPlane/cuttingPlane.C
  sampledSurface/sampledPatch/sampledPatch.C
  sampledSurface/sampledPatchInternalField/sampledPatchInternalField.C
  sampledSurface/sampledPlane/sampledPlane.C
  sampledSurface/isoSurface/isoSurface.C
  sampledSurface/isoSurface/sampledIsoSurface.C
  sampledSurface/isoSurface/isoSurfaceCell.C
  sampledSurface/isoSurface/sampledIsoSurfaceCell.C
  sampledSurface/distanceSurface/distanceSurface.C
  sampledSurface/sampledCuttingPlane/sampledCuttingPlane.C
  sampledSurface/sampledSurface/sampledSurface.C
  sampledSurface/sampledSurfaces/sampledSurfaces.C
  sampledSurface/sampledSurfaces/sampledSurfacesGrouping.C
  sampledSurface/sampledSurfacesFunctionObject/sampledSurfacesFunctionObject.C
  sampledSurface/sampledTriSurfaceMesh/sampledTriSurfaceMesh.C
  sampledSurface/thresholdCellFaces/thresholdCellFaces.C
  sampledSurface/thresholdCellFaces/sampledThresholdCellFaces.C
  sampledSurface/writers/surfaceWriter.C
  sampledSurface/writers/dx/dxSurfaceWriter.C
  sampledSurface/writers/ensight/ensightSurfaceWriter.C
  sampledSurface/writers/ensight/ensightPTraits.C
  sampledSurface/writers/foamFile/foamFileSurfaceWriter.C
  sampledSurface/writers/nastran/nastranSurfaceWriter.C
  sampledSurface/writers/proxy/proxySurfaceWriter.C
  sampledSurface/writers/raw/rawSurfaceWriter.C
  sampledSurface/writers/starcd/starcdSurfaceWriter.C
  sampledSurface/writers/vtk/vtkSurfaceWriter.C
  graphField/writePatchGraph.C
  graphField/writeCellGraph.C
  graphField/makeGraph.C
  meshToMeshInterpolation/meshToMesh/meshToMesh.C
  meshToMeshInterpolation/meshToMesh/meshToMeshParallelOps.C
  meshToMeshInterpolation/meshToMesh/calcMethod/meshToMeshMethod/meshToMeshMethod.C
  meshToMeshInterpolation/meshToMesh/calcMethod/meshToMeshMethod/meshToMeshMethodNew.C
  meshToMeshInterpolation/meshToMesh/calcMethod/cellVolumeWeight/cellVolumeWeightMethod.C
  meshToMeshInterpolation/meshToMesh/calcMethod/direct/directMethod.C
  meshToMeshInterpolation/meshToMesh/calcMethod/mapNearest/mapNearestMethod.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
  libsurfMesh
  libfileFormats
  libtriSurface
  liblagrangian
  libconversion
)

include_directories(.)
include_directories(../../src/OpenFOAM)
include_directories(../../src/OSspecific/POSIX)
include_directories(../../src/finiteVolume)
include_directories(../../src/meshTools)
include_directories(../../src/surfMesh)
include_directories(../../src/fileFormats)
include_directories(../../src/triSurface)
include_directories(../../src/conversion)
include_directories(../../src/lagrangian/basic)

add_library(libsampling ${SOURCES})
set_target_properties(libsampling PROPERTIES PREFIX "")

target_link_libraries(libsampling ${LIBRARIES})

install(TARGETS libsampling DESTINATION lib OPTIONAL)
