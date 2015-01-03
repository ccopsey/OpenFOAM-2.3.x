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
    driftFluxFoam

Description
    Solver for 2 incompressible fluids using the mixture approach with the
    drift-flux approximation for relative motion of the phases.

    Used for simulating the settling of the dispersed phase and other similar
    separation problems.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./fvMatrices/solvers/MULES/CMULES.H"
#include "./algorithms/subCycle/subCycle.H"
#include "./incompressibleTwoPhaseInteractingMixture/incompressibleTwoPhaseInteractingMixture.H"
#include "./relativeVelocityModels/relativeVelocityModel/relativeVelocityModel.H"
#include "./turbulenceModel.H"
#include "./CompressibleTurbulenceModel/CompressibleTurbulenceModel.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./fvOptions/fvIOoptionList.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"
#include "./finiteVolume/laplacianSchemes/gaussLaplacianScheme/gaussLaplacianScheme.H"
#include "./finiteVolume/snGradSchemes/uncorrectedSnGrad/uncorrectedSnGrad.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"

    #include "./include/createTime.H"
    #include "./include/createMesh.H"
    #include "./cfdTools/general/include/readGravitationalAcceleration.H"
    #include "./createFields.H"
    #include "./include/createFvOptions.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"

    pimpleControl pimple(mesh);

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./cfdTools/incompressible/CourantNo.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            #include "./cfdTools/general/include/alphaControls.H"

            UdmModel.correct();

            #include "./alphaEqnSubCycle.H"

            mixture.correct();

            #include "./UEqn.H"

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
