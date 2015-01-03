/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2011-2013 OpenFOAM Foundation
     \\/     M anipulation  |
-------------------------------------------------------------------------------
License
    This file is part of OpenFOAM.

    OpenFOAM is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License
    along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.

Application
    chtMultiRegionFoam

Description
    Combination of heatConductionFoam and buoyantFoam for conjugate heat
    transfer between solid regions and fluid regions. Both regions include
    the fvOptions framework.

    It handles secondary fluid or solid circuits which can be coupled
    thermally with the main fluid region. i.e radiators, etc.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./rhoThermo/rhoThermo.H"
#include "./turbulenceModel.H"
#include "./fields/fvPatchFields/basic/fixedGradient/fixedGradientFvPatchFields.H"
#include "./regionProperties/regionProperties.H"
#include "./fluid/compressibleCourantNo.H"
#include "./solid/solidRegionDiffNo.H"
#include "./solidThermo/solidThermo.H"
#include "./radiationModel/radiationModel/radiationModel.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./coordinateSystems/coordinateSystem.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"

    regionProperties rp(runTime);

    #include "./createFluidMeshes.H"
    #include "./solid/createSolidMeshes.H"

    #include "./createFluidFields.H"
    #include "./solid/createSolidFields.H"

    #include "./fluid/initContinuityErrs.H"
    #include "./cfdTools/general/include/readTimeControls.H"
    #include "./solid/readSolidTimeControls.H"


    #include "./compressibleMultiRegionCourantNo.H"
    #include "./solid/solidRegionDiffusionNo.H"
    #include "./include/setInitialMultiRegionDeltaT.H"

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./solid/readSolidTimeControls.H"
        #include "./readPIMPLEControls.H"

        #include "./compressibleMultiRegionCourantNo.H"
        #include "./solid/solidRegionDiffusionNo.H"
        #include "./include/setMultiRegionDeltaT.H"

        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        if (nOuterCorr != 1)
        {
            forAll(fluidRegions, i)
            {
                #include "./setRegionFluidFields.H"
                #include "./fluid/storeOldFluidFields.H"
            }
        }


        // --- PIMPLE loop
        for (int oCorr=0; oCorr<nOuterCorr; oCorr++)
        {
            bool finalIter = oCorr == nOuterCorr-1;

            forAll(fluidRegions, i)
            {
                Info<< "\nSolving for fluid region "
                    << fluidRegions[i].name() << endl;
                #include "./setRegionFluidFields.H"
                #include "./fluid/readFluidMultiRegionPIMPLEControls.H"
                #include "./solveFluid.H"
            }

            forAll(solidRegions, i)
            {
                Info<< "\nSolving for solid region "
                    << solidRegions[i].name() << endl;
                #include "./solid/setRegionSolidFields.H"
                #include "./solid/readSolidMultiRegionPIMPLEControls.H"
                #include "./solveSolid.H"
            }

        }

        runTime.write();

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End\n" << endl;

    return 0;
}


// ************************************************************************* //
