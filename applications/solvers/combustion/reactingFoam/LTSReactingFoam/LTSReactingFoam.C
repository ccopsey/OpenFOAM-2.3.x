/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2013 OpenFOAM Foundation
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
    LTSReactingFoam

Description
    Local time stepping (LTS) solver for steady, compressible, laminar or
    turbulent reacting and non-reacting flow.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./turbulenceModel.H"
#include "./psiCombustionModel/psiCombustionModel/psiCombustionModel.H"
#include "./interpolation/surfaceInterpolation/multivariateSchemes/multivariateScheme/multivariateScheme.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./finiteVolume/fvc/fvcSmooth/fvcSmooth.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createMesh.H"

    pimpleControl pimple(mesh);

    #include "./cfdTools/general/include/readGravitationalAcceleration.H"
    #include "createFields.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./readTimeControls.H"
    #include "./cfdTools/compressible/compressibleCourantNo.H"
    #include "./setInitialrDeltaT.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./readTimeControls.H"

        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        #include "./setrDeltaT.H"

        #include "./cfdTools/compressible/rhoEqn.H"

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            #include "UEqn.H"
            #include "./YEqn.H"
            #include "./EEqn.H"

            // --- Pressure corrector loop
            while (pimple.correct())
            {
                #include "pEqn.H"
            }

            if (pimple.turbCorr())
            {
                turbulence->correct();
            }
        }

        runTime.write();

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End\n" << endl;

    return(0);
}


// ************************************************************************* //
