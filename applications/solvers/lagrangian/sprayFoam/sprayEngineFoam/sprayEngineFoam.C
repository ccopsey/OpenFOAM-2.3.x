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
    sprayEngineFoam

Description
    Transient PIMPLE solver for compressible, laminar or turbulent engine
    flow swith spray parcels.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./engineTime/engineTime.H"
#include "./engineMesh/engineMesh/engineMesh.H"
#include "./turbulenceModel.H"
#include "./clouds/derived/basicSprayCloud/basicSprayCloud.H"
#include "./psiCombustionModel/psiCombustionModel/psiCombustionModel.H"
#include "./radiationModel/radiationModel/radiationModel.H"
#include "./SLGThermo/SLGThermo.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./fvOptions/fvIOoptionList.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"

    #include "./include/createEngineTime.H"
    #include "./include/createEngineMesh.H"
    #include "./cfdTools/general/include/readGravitationalAcceleration.H"
    #include "./createFields.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/compressible/createRhoUf.H"
    #include "./createClouds.H"
    #include "./include/createRadiationModel.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./readEngineTimeControls.H"
    #include "./cfdTools/compressible/compressibleCourantNo.H"
    #include "./cfdTools/general/include/setInitialDeltaT.H"
    #include "./startSummary.H"

    pimpleControl pimple(mesh);

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./readEngineTimeControls.H"
        #include "./cfdTools/compressible/compressibleCourantNo.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;

        Info<< "Crank angle = " << runTime.theta() << " CA-deg" << endl;

        mesh.move();

        parcels.evolve();

        #include "./rhoEqn.H"

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            #include "./UEqn.H"
            #include "YEqn.H"
            #include "EEqn.H"

            // --- Pressure corrector loop
            while (pimple.correct())
            {
                #include "./pEqn.H"
            }

            if (pimple.turbCorr())
            {
                turbulence->correct();
            }
        }

        #include "./logSummary.H"

        rho = thermo.rho();

        if (runTime.write())
        {
            combustion->dQ()().write();
        }

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End\n" << endl;

    return(0);
}


// ************************************************************************* //
