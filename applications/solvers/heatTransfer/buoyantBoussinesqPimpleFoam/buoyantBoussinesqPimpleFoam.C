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
    buoyantBoussinesqPimpleFoam

Description
    Transient solver for buoyant, turbulent flow of incompressible fluids

    Uses the Boussinesq approximation:
    \f[
        rho_{k} = 1 - beta(T - T_{ref})
    \f]

    where:
        \f$ rho_{k} \f$ = the effective (driving) kinematic density
        beta = thermal expansion coefficient [1/K]
        T = temperature [K]
        \f$ T_{ref} \f$ = reference temperature [K]

    Valid when:
    \f[
        \frac{beta(T - T_{ref})}{rho_{ref}} << 1
    \f]

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./incompressible/singlePhaseTransportModel/singlePhaseTransportModel.H"
#include "./RASModel/RASModel.H"
#include "./radiationModel/radiationModel/radiationModel.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createMesh.H"
    #include "./cfdTools/general/include/readGravitationalAcceleration.H"
    #include "./createFields.H"
    #include "./include/createIncompressibleRadiationModel.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./cfdTools/general/include/readTimeControls.H"
    #include "./cfdTools/incompressible/CourantNo.H"
    #include "./cfdTools/general/include/setInitialDeltaT.H"

    pimpleControl pimple(mesh);

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.loop())
    {
        Info<< "Time = " << runTime.timeName() << nl << endl;

        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./cfdTools/incompressible/CourantNo.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            #include "./UEqn.H"
            #include "./TEqn.H"

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

        runTime.write();

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End\n" << endl;

    return 0;
}


// ************************************************************************* //
