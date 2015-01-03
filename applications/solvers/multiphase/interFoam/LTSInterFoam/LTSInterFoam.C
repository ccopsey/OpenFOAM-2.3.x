/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2011-2014 OpenFOAM Foundation
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
    interFoam

Description
    Solver for 2 incompressible, isothermal immiscible fluids using a VOF
    (volume of fluid) phase-fraction based interface capturing approach.

    The momentum and other fluid properties are of the "mixture" and a single
    momentum equation is solved.

    Turbulence modelling is generic, i.e.  laminar, RAS or LES may be selected.

    For a two-fluid approach see twoPhaseEulerFoam.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./fvMatrices/solvers/MULES/CMULES.H"
#include "./algorithms/subCycle/subCycle.H"
#include "./immiscibleIncompressibleTwoPhaseMixture/immiscibleIncompressibleTwoPhaseMixture.H"
#include "./turbulenceModel.H"
#include "./finiteVolume/fvc/fvcSmooth/fvcSmooth.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createMesh.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "createFields.H"

    pimpleControl pimple(mesh);

    #include "./cfdTools/general/include/createPrghCorrTypes.H"
    #include "correctPhi.H"
    #include "./cfdTools/incompressible/CourantNo.H"
    #include "./setInitialrDeltaT.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        #include "./setrDeltaT.H"

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            #include "./cfdTools/general/include/alphaControls.H"

            #define LTSSOLVE
            #include "./alphaEqnSubCycle.H"
            #undef LTSSOLVE

            mixture.correct();

            turbulence->correct();

            #include "UEqn.H"

            // --- Pressure corrector loop
            while (pimple.correct())
            {
                #include "pEqn.H"
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
