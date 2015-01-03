# ccFOAM-2.3.x

ccFOAM is a fork of [OpenFOAM](http://www.openfoam.org) designed to improve ease of build and use.  Without modification to any of the existing project files it intends to add the following enhancements:

  * Alternative configurable out-of-source CMake build,
  * Minimal installation,
  * A single foam binary through which the entire toolkit can be accessed.
  * Minimal environment requirements.

## OpenFOAM

For more information about OpenFOAM, either visit the [OpenFOAM website](http://www.openfoam.org), the [OpenFOAM GitHub repository](https://github.com/OpenFOAM/OpenFOAM-2.3.x) or read the [OpenFOAM README](README.OpenFOAM.html).

## Prerequisites

It is assumed that the following libraries are already installed in the system and are either automatically detected by CMake, or are specifiable on the command line/through ccmake.

  * CGAL
    * Boost.System
    * Boost.Thread
  * CMake
  * Flex
  * GMP
  * Metis
  * MPC
  * MPFR
  * OpenMPI
  * ParMetis
  * ParMGridGen
  * Scotch
  * ZLib

If any of these libraries are not available, scripts are included in ``ccfoam/buildscripts`` to help with their installation.

## Building ccFOAM

To build the complete ccFOAM toolkit:

  1. Download the sources from http://github.com/ccopsey/ccFOAM-2.3.x
  2. `cd` into `ccFOAM-2.3.x`
  3. `cmake .`
  4. `make install`

To build select components of the toolkit, for example only the libraries and executables required to run the pisoFoam pitzDaily tutorial, use:

  `make pisoFoam blockMesh libsampling libfieldFunctionObjects install`

## Known issues

  1. Due to the large number of `include` directories for each compilation unit, the build runs slowly.

  2. The following compilation units fail to build:

    * chtMultiRegionFoam
      * chtMultiRegionSimpleFoam
    * sonicFoam
      * sonicDyMFoam
      * sonicLiquidFoam
    * reactingFoam
      * rhoReactingFoam
      * rhoReactingBuoyantFoam
      * LTSReactingFoam
    * reactingParcelFoam
    * DPMFoam
      * DPMTurbulenceModels
      * MPPICFoam
    * twoPhaseEulerFoam
      * twoPhaseSystem
      * interfacialModels
      * phaseCompressibleTurbulenceModels
    * ccm26ToFoam
    * foamToTecplot360

## License

In line with OpenFOAM, ccFOAM is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. See the file [COPYING](COPYING) in this directory or http://www.gnu.org/licenses/, for a description of the GNU General Public License terms under which you can copy the files.
