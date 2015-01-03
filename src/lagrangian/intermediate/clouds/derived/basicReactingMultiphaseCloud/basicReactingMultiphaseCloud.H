/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2011 OpenFOAM Foundation
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

Class
    Foam::basicReactingMultiphaseCloud

Description
    Cloud class to introduce multi-phase reacting parcels

\*---------------------------------------------------------------------------*/

#ifndef basicReactingMultiphaseCloud_H
#define basicReactingMultiphaseCloud_H

#include "./Cloud/Cloud.H"
#include "./clouds/Templates/KinematicCloud/KinematicCloud.H"
#include "./clouds/Templates/ThermoCloud/ThermoCloud.H"
#include "./clouds/Templates/ReactingCloud/ReactingCloud.H"
#include "./clouds/Templates/ReactingMultiphaseCloud/ReactingMultiphaseCloud.H"
#include "./parcels/derived/basicReactingMultiphaseParcel/basicReactingMultiphaseParcel.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{
    typedef ReactingMultiphaseCloud
    <
        ReactingCloud
        <
            ThermoCloud
            <
                KinematicCloud
                <
                    Cloud
                    <
                        basicReactingMultiphaseParcel
                    >
                >
            >
        >
    > basicReactingMultiphaseCloud;
}

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

#endif

// ************************************************************************* //
