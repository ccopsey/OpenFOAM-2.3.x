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

\*---------------------------------------------------------------------------*/

#include "./clouds/derived/basicSprayCloud/basicSprayCloud.H"

#include "./parcels/include/makeParcelCloudFunctionObjects.H"

// Kinematic
#include "./parcels/include/makeThermoParcelForces.H" // thermo variant
#include "./parcels/include/makeThermoParcelTurbulenceForces.H" // add turbulence variant
#include "./parcels/include/makeParcelDispersionModels.H"
#include "./parcels/include/makeParcelTurbulenceDispersionModels.H" // add turbulence variant
#include "./parcels/include/makeSprayParcelInjectionModels.H" // Spray variant
#include "./parcels/include/makeParcelPatchInteractionModels.H"
#include "./parcels/include/makeSprayParcelStochasticCollisionModels.H" // Spray variant

// Thermodynamic
#include "./parcels/include/makeParcelHeatTransferModels.H"

// Reacting
#include "./parcels/include/makeReactingParcelCompositionModels.H"
#include "./parcels/include/makeReactingParcelPhaseChangeModels.H"
#include "./parcels/include/makeReactingParcelSurfaceFilmModels.H"

// Spray
#include "./parcels/include/makeSprayParcelAtomizationModels.H"
#include "./parcels/include/makeSprayParcelBreakupModels.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{
    makeParcelCloudFunctionObjects(basicSprayCloud);

    // Kinematic sub-models
    makeThermoParcelForces(basicSprayCloud);
    makeThermoParcelTurbulenceForces(basicSprayCloud);
    makeParcelDispersionModels(basicSprayCloud);
    makeParcelTurbulenceDispersionModels(basicSprayCloud);
    makeSprayParcelInjectionModels(basicSprayCloud);
    makeParcelPatchInteractionModels(basicSprayCloud);
    makeSprayParcelStochasticCollisionModels(basicSprayCloud);

    // Thermo sub-models
    makeParcelHeatTransferModels(basicSprayCloud);

    // Reacting sub-models
    makeReactingParcelCompositionModels(basicSprayCloud);
    makeReactingParcelPhaseChangeModels(basicSprayCloud);
    makeReactingParcelSurfaceFilmModels(basicSprayCloud);

    // Spray sub-models
    makeSprayParcelAtomizationModels(basicSprayCloud);
    makeSprayParcelBreakupModels(basicSprayCloud);
};


// ************************************************************************* //
