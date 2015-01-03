/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2012-2013 OpenFOAM Foundation
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

#include "./makeReactionThermo.H"

#include "./rhoReactionThermo.H"
#include "./rhoThermo/heRhoThermo.H"

#include "./specie/specie.H"
#include "./equationOfState/perfectGas/perfectGas.H"
#include "./equationOfState/incompressiblePerfectGas/incompressiblePerfectGas.H"
#include "./thermo/hConst/hConstThermo.H"
#include "./thermo/janaf/janafThermo.H"
#include "./thermo/sensibleEnthalpy/sensibleEnthalpy.H"
#include "./thermo/thermo/thermo.H"

#include "./transport/const/constTransport.H"
#include "./transport/sutherland/sutherlandTransport.H"

#include "./mixtures/homogeneousMixture/homogeneousMixture.H"
#include "./mixtures/inhomogeneousMixture/inhomogeneousMixture.H"
#include "./mixtures/veryInhomogeneousMixture/veryInhomogeneousMixture.H"
#include "./mixtures/multiComponentMixture/multiComponentMixture.H"
#include "./mixtures/reactingMixture/reactingMixture.H"
#include "./mixtures/singleStepReactingMixture/singleStepReactingMixture.H"

#include "./include/thermoPhysicsTypes.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    homogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    perfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    inhomogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    perfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    veryInhomogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    perfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    homogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    perfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    inhomogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    perfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    veryInhomogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    perfectGas,
    specie
);


makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    homogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    incompressiblePerfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    inhomogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    incompressiblePerfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    veryInhomogeneousMixture,
    constTransport,
    sensibleEnthalpy,
    hConstThermo,
    incompressiblePerfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    homogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    incompressiblePerfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    inhomogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    incompressiblePerfectGas,
    specie
);

makeReactionThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    veryInhomogeneousMixture,
    sutherlandTransport,
    sensibleEnthalpy,
    janafThermo,
    incompressiblePerfectGas,
    specie
);


// Multi-component thermo for internal energy

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    constGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    gasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    constIncompressibleGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    incompressibleGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    icoPoly8EThermoPhysics
);


    // Multi-component reaction thermo

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    constGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    gasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    constIncompressibleGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    incompressibleGasEThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    icoPoly8EThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    singleStepReactingMixture,
    gasEThermoPhysics
);




// Multi-component thermo for sensible enthalpy

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    constGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    gasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    constIncompressibleGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    incompressibleGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    multiComponentMixture,
    icoPoly8HThermoPhysics
);


// Multi-component reaction thermo

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    constGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    gasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    constIncompressibleGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    incompressibleGasHThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    reactingMixture,
    icoPoly8HThermoPhysics
);

makeReactionMixtureThermo
(
    rhoThermo,
    rhoReactionThermo,
    heRhoThermo,
    singleStepReactingMixture,
    gasHThermoPhysics
);


// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

} // End namespace Foam

// ************************************************************************* //
