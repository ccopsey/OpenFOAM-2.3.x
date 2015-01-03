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
    chtMultiRegionSimpleFoam

Description
    Steady-state version of chtMultiRegionFoam

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./rhoThermo/rhoThermo.H"
#include "./turbulenceModel.H"
#include "./fields/fvPatchFields/basic/fixedGradient/fixedGradientFvPatchFields.H"
#include "./regionProperties/regionProperties.H"
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

    #include "./fluid/createFluidMeshes.H"
    #include "./createSolidMeshes.H"

    #include "./fluid/createFluidFields.H"
    #include "./createSolidFields.H"

    #include "./cfdTools/general/include/initContinuityErrs.H"


    while (runTime.loop())
    {
        Info<< "Time = " << runTime.timeName() << nl << endl;

        forAll(fluidRegions, i)
        {
            Info<< "\nSolving for fluid region "
                << fluidRegions[i].name() << endl;
            #include "./fluid/setRegionFluidFields.H"
            #include "./fluid/readFluidMultiRegionSIMPLEControls.H"
            #include "./fluid/solveFluid.H"
        }

        forAll(solidRegions, i)
        {
            Info<< "\nSolving for solid region "
                << solidRegions[i].name() << endl;
            #include "./setRegionSolidFields.H"
            #include "./solid/readSolidMultiRegionSIMPLEControls.H"
            #include "./solid/solveSolid.H"
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
