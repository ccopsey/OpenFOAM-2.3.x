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
    multiphaseEulerFoam

Description
    Solver for a system of many compressible fluid phases including
    heat-transfer.

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./multiphaseSystem/multiphaseSystem.H"
#include "./multiphaseSystem/phaseModel/phaseModel.H"
#include "./interfacialModels/dragModels/dragModel/dragModel.H"
#include "./interfacialModels/heatTransferModels/heatTransferModel/heatTransferModel.H"
#include "./incompressible/singlePhaseTransportModel/singlePhaseTransportModel.H"
#include "./LESModel.H"
#include "./cfdTools/general/solutionControl/pimpleControl/pimpleControl.H"
#include "./cfdTools/general/MRF/IOMRFZoneList.H"
#include "./fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.H"


// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/setRootCase.H"

    #include "./include/createTime.H"
    #include "./include/createMesh.H"

    pimpleControl pimple(mesh);

    #include "./createFields.H"
    #include "./createMRFZones.H"
    #include "./cfdTools/general/include/initContinuityErrs.H"
    #include "./cfdTools/general/include/readTimeControls.H"
    #include "./cfdTools/general/include/createPcorrTypes.H"
    #include "./correctPhi.H"
    #include "./CourantNo.H"
    #include "./cfdTools/general/include/setInitialDeltaT.H"

    // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

    Info<< "\nStarting time loop\n" << endl;

    while (runTime.run())
    {
        #include "./cfdTools/general/include/readTimeControls.H"
        #include "./CourantNo.H"
        #include "./cfdTools/general/include/setDeltaT.H"

        runTime++;
        Info<< "Time = " << runTime.timeName() << nl << endl;

        // --- Pressure-velocity PIMPLE corrector loop
        while (pimple.loop())
        {
            sgsModel->correct();
            fluid.solve();
            rho = fluid.rho();
            #include "./zonePhaseVolumes.H"

            //#include "TEqns.H"
            #include "./UEqns.H"

            // --- Pressure corrector loop
            while (pimple.correct())
            {
                #include "./pEqn.H"
            }

            #include "./DDtU.H"
        }

        runTime.write();

        Info<< "ExecutionTime = "
            << runTime.elapsedCpuTime()
            << " s\n\n" << endl;
    }

    Info<< "End\n" << endl;

    return 0;
}


// ************************************************************************* //
