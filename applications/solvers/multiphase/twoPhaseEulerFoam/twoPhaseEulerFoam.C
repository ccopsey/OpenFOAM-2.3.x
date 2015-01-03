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
    twoPhaseEulerFoam

Description
    Solver for a system of 2 compressible fluid phases with one phase
    dispersed, e.g. gas bubbles in a liquid including heat-transfer.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./twoPhaseSystem/twoPhaseSystem.H"
#include "PhaseCompressibleTurbulenceModel.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./cfdTools/general/MRF/IOMRFZoneList.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"

    #include "./include/createTime.H"
    #include "./include/createMesh.H"
    #include "./cfdTools/general/include/readGravitationalAcceleration.H"
    #include "./createFields.H"
    #include "./createMRFZones.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./cfdTools/general/include/readTimeControls.H"
    #include "./CourantNos.H"
    #include "./cfdTools/general/include/setInitialDeltaT.H"

    pimpleControl pimple(mesh);

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./CourantNos.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;
        Info<< "Time = " << runTime.timeName() << nl << endl;

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            fluid.solve();
            fluid.correct();

            volScalarField contErr1
            (
                fvc::ddt(alpha1, rho1) + fvc::div(alphaRhoPhi1)
              - (fvOptions(alpha1, rho1)&rho1)
            );

            volScalarField contErr2
            (
                fvc::ddt(alpha2, rho2) + fvc::div(alphaRhoPhi2)
               - (fvOptions(alpha2, rho2)&rho2)
            );


            #include "./UEqns.H"
            #include "./EEqns.H"

            // --- Pressure corrector loop
            while (pimple.correct())
            {
                #include "./pEqn.H"
            }

            #include "./DDtU.H"

            if (pimple.turbCorr())
            {
                fluid.correctTurbulence();
            }
        }

        #include "./write.H"

        Info<< "ExecutionTime = "
            << runTime.elapsedCpuTime()
            << " s\n\n" << endl;
    }

    Info<< "End\n" << endl;

    return 0;
}


// ************************************************************************* //
