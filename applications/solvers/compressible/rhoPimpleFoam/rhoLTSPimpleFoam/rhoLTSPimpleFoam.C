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
    rhoLTSPorousMRFPimpleFoam

Description
    Transient solver for laminar or turbulent flow of compressible fluids
    with support for run-time selectable finite volume options, e.g. MRF,
    explicit porosity.

    Uses the flexible PIMPLE (PISO-SIMPLE) solution for time-resolved and
    pseudo-transient simulations with support for local time-stepping for
    efficient steady-state solution.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./psiThermo/psiThermo.H"
#include "./turbulenceModel.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./finiteVolume/fvc/fvcSmooth/fvcSmooth.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./cfdTools/general/bound/bound.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createMesh.H"

    pimpleControl pimple(mesh);

    #include "./setInitialrDeltaT.H"
    #include "./createFields.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./cfdTools/compressible/compressibleCourantNo.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        #include "./setrDeltaT.H"

        if (pimple.nCorrPIMPLE() <= 1)
        {
            #include "./cfdTools/compressible/rhoEqn.H"
        }

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            turbulence->correct();

            #include "./UEqn.H"
            #include "./EEqn.H"

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
