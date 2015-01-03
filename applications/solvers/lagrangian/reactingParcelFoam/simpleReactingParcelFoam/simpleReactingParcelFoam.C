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
    simpleReactingParcelFoam

Description
    Steady state SIMPLE solver for compressible, laminar or turbulent flow with
    reacting multiphase Lagrangian parcels, including run-time selectable
    finite volume options, e.g. sources, constraints

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./turbulenceModel.H"
#include "./clouds/derived/basicReactingMultiphaseCloud/basicReactingMultiphaseCloud.H"
#include "./rhoCombustionModel/rhoCombustionModel/rhoCombustionModel.H"
#include "./radiationModel/radiationModel/radiationModel.H"
#include "./cfdTools/general/porosityModel/porosityModel/IOporosityModelList.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./SLGThermo/SLGThermo.H"
#include "./cfdTools/general/solutionControl/simpleControl/simpleControl.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"

    #include "./include/createTime.H"
    #include "./include/createMesh.H"
    #include "./cfdTools/general/include/readGravitationalAcceleration.H"

    simpleControl simple(mesh);

    #include "./createFields.H"
    #include "./include/createRadiationModel.H"
    #include "./createClouds.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (simple.loop())
    {
        Info<< "Time = " << runTime.timeName() << nl << endl;

        parcels.evolve();

        // --- Pressure-velocity SIMPLE corrector loop
        {
            #include "./UEqn.H"
            #include "./YEqn.H"
            #include "./EEqn.H"
            #include "./pEqn.H"
        }

        turbulence->correct();

        runTime.write();

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End\n" << endl;

    return(0);
}


// ************************************************************************* //
