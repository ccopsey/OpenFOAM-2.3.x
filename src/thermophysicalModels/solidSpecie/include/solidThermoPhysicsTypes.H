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

Typedefs
    Foam::solidThermoPhysicsTypes

Description
    Type definitions for solid-thermo-physics models

\*---------------------------------------------------------------------------*/

#ifndef solidThermoPhysicsTypes_H
#define solidThermoPhysicsTypes_H

#include "./specie/specie.H"
#include "./equationOfState/rhoConst/rhoConst.H"
#include "./thermo/hConst/hConstThermo.H"
#include "./thermo/hPolynomial/hPolynomialThermo.H"
#include "./thermo/hExponential/hExponentialThermo.H"
#include "./transport/const/constIsoSolidTransport.H"
#include "./transport/const/constAnIsoSolidTransport.H"
#include "./transport/exponential/exponentialSolidTransport.H"
#include "./transport/polynomial/polynomialSolidTransport.H"

#include "./thermo/sensibleEnthalpy/sensibleEnthalpy.H"
#include "./thermo/thermo/thermo.H"


// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{
    typedef
        constIsoSolidTransport
        <
            species::thermo
            <
                hConstThermo
                <
                    rhoConst<specie>
                >,
                sensibleEnthalpy
            >
        > hConstSolidThermoPhysics;

    typedef
        exponentialSolidTransport
        <
            species::thermo
            <
                hExponentialThermo
                <
                    rhoConst<specie>
                >,
                sensibleEnthalpy
            >
        > hExponentialSolidThermoPhysics;

    typedef
        polynomialSolidTransport
        <
            species::thermo
            <
                hPolynomialThermo
                <
                    rhoConst<specie>,
                    8
                >,
                sensibleEnthalpy
            >,
            8
        > hTransportThermoPoly8SolidThermoPhysics;

     typedef
        constIsoSolidTransport
        <
            species::thermo
            <
                hExponentialThermo
                <
                    rhoConst<specie>
                >,
                sensibleEnthalpy
            >
        > hExpKappaConstSolidThermoPhysics;
}


// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

#endif

// ************************************************************************* //
