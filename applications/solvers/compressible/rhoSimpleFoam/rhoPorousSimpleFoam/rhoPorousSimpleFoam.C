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
    rhoPorousSimpleFoam

Description
    Steady-state solver for turbulent flow of compressible fluids with
    RANS turbulence modelling, implicit or explicit porosity treatment
    and run-time selectable finite volume sources.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./rhoThermo/rhoThermo.H"
#include "./RASModel.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./cfdTools/general/porosityModel/porosityModel/IOporosityModelList.H"
#include "./cfdTools/general/solutionControl/simpleControl/simpleControl.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createMesh.H"

    simpleControl simple(mesh);

    #include "./createFields.H"
    #include "./include/createFvOptions.H"
    #include "./createZones.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (simple.loop())
    {
        Info<< "Time = " << runTime.timeName() << nl << endl;

        // Pressure-velocity SIMPLE corrector
        {
            #include "./UEqn.H"
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

    return 0;
}


// ************************************************************************* //
