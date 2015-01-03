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

\*---------------------------------------------------------------------------*/

#include "./clouds/derived/basicReactingMultiphaseCloud/basicReactingMultiphaseCloud.H"

#include "./parcels/include/makeParcelCloudFunctionObjects.H"

// Kinematic
#include "./parcels/include/makeThermoParcelForces.H" // thermo variant
#include "./parcels/include/makeParcelDispersionModels.H"
#include "./parcels/include/makeReactingMultiphaseParcelInjectionModels.H" // MP variant
#include "./parcels/include/makeParcelPatchInteractionModels.H"
#include "./parcels/include/makeReactingMultiphaseParcelStochasticCollisionModels.H" // MP variant
#include "./parcels/include/makeReactingParcelSurfaceFilmModels.H" // Reacting variant

// Thermodynamic
#include "./parcels/include/makeParcelHeatTransferModels.H"

// Reacting
#include "./parcels/include/makeReactingMultiphaseParcelCompositionModels.H" // MP Variant
#include "./parcels/include/makeReactingParcelPhaseChangeModels.H"

// Reacting multiphase
#include "./parcels/include/makeReactingMultiphaseParcelDevolatilisationModels.H"
#include "./parcels/include/makeReactingMultiphaseParcelSurfaceReactionModels.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{
    makeParcelCloudFunctionObjects(basicReactingMultiphaseCloud);

    // Kinematic sub-models
    makeThermoParcelForces(basicReactingMultiphaseCloud);
    makeParcelDispersionModels(basicReactingMultiphaseCloud);
    makeReactingMultiphaseParcelInjectionModels(basicReactingMultiphaseCloud);
    makeParcelPatchInteractionModels(basicReactingMultiphaseCloud);
    makeReactingMultiphaseParcelStochasticCollisionModels
    (
        basicReactingMultiphaseCloud
    );
    makeReactingParcelSurfaceFilmModels(basicReactingMultiphaseCloud);

    // Thermo sub-models
    makeParcelHeatTransferModels(basicReactingMultiphaseCloud);

    // Reacting sub-models
    makeReactingMultiphaseParcelCompositionModels
    (
        basicReactingMultiphaseCloud
    );
    makeReactingParcelPhaseChangeModels(basicReactingMultiphaseCloud);

    // Reacting multiphase sub-models
    makeReactingMultiphaseParcelDevolatilisationModels
    (
        basicReactingMultiphaseCloud
    );
    makeReactingMultiphaseParcelSurfaceReactionModels
    (
        basicReactingMultiphaseCloud
    );
}


// ************************************************************************* //
