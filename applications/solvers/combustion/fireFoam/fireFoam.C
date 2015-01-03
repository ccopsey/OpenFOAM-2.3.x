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
    fireFoam

Description
    Transient PIMPLE solver for Fires and turbulent diffusion flames with
    reacting Lagrangian parcels, surface film and pyrolysis modelling.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./turbulenceModel.H"
#include "./clouds/derived/basicReactingCloud/basicReactingCloud.H"
#include "./surfaceFilmModel/surfaceFilmModel.H"
#include "./pyrolysisModel/pyrolysisModelCollection.H"
#include "./radiationModel/radiationModel/radiationModel.H"
#include "./SLGThermo/SLGThermo.H"
#include "./solidChemistryModel/solidChemistryModel.H"
#include "./psiCombustionModel/psiCombustionModel/psiCombustionModel.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
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
    #include "./include/createFvOptions.H"
    #include "./createClouds.H"
    #include "./createSurfaceFilmModel.H"
    #include "./createPyrolysisModel.H"
    #include "./include/createRadiationModel.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./cfdTools/general/include/readTimeControls.H"
    #include "./cfdTools/compressible/compressibleCourantNo.H"
    #include "./cfdTools/general/include/setInitialDeltaT.H"
    #include "./readPyrolysisTimeControls.H"

    pimpleControl pimple(mesh);

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./cfdTools/compressible/compressibleCourantNo.H"
        #include "./solidRegionDiffusionNo.H"
        #include "./setMultiRegionDeltaT.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;

        Info<< "Time = " << runTime.timeName() << nl << endl;

        parcels.evolve();

        surfaceFilm.evolve();

        pyrolysis.evolve();

        if (solvePrimaryRegion)
        {
            #include "./rhoEqn.H"

            // --- PIMPLE loop
            while (pimple.loop())
            {
                #include "./UEqn.H"
                #include "./YEEqn.H"

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

            rho = thermo.rho();
        }

        runTime.write();

        Info<< "ExecutionTime = " << runTime.elapsedCpuTime() << " s"
            << "  ClockTime = " << runTime.elapsedClockTime() << " s"
            << nl << endl;
    }

    Info<< "End" << endl;

    return(0);
}


// ************************************************************************* //
