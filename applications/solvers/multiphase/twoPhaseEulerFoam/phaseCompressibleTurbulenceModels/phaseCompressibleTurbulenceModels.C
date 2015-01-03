/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2014 OpenFOAM Foundation
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

#include "PhaseCompressibleTurbulenceModel.H"
#include "./phaseModel/phaseModel.H"
#include "./twoPhaseSystem.H"
#include "./db/runTimeSelection/construction/addToRunTimeSelectionTable.H"
#include "./makeTurbulenceModel.H"

#include "./laminar/laminar.H"
#include "./RAS/RASModel/RASModel.H"
#include "./LES/LESModel/LESModel.H"

makeBaseTurbulenceModel
(
    volScalarField,
    volScalarField,
    compressibleTurbulenceModel,
    PhaseCompressibleTurbulenceModel,
    phaseModel
);

#define makeRASModel(Type)                                                     \
    makeTemplatedTurbulenceModel                                               \
    (phaseModelPhaseCompressibleTurbulenceModel, RAS, Type)

#define makeLESModel(Type)                                                     \
    makeTemplatedTurbulenceModel                                               \
    (phaseModelPhaseCompressibleTurbulenceModel, LES, Type)

#include "./RAS/kEpsilon/kEpsilon.H"
makeRASModel(kEpsilon);

#include "mixtureKEpsilon.H"
makeRASModel(mixtureKEpsilon);

#include "LaheyKEpsilon.H"
makeRASModel(LaheyKEpsilon);

#include "continuousGasKEpsilon.H"
makeRASModel(continuousGasKEpsilon);

#include "./LES/Smagorinsky/Smagorinsky.H"
makeLESModel(Smagorinsky);

#include "./LES/kEqn/kEqn.H"
makeLESModel(kEqn);

#include "SmagorinskyZhang.H"
makeLESModel(SmagorinskyZhang);

#include "NicenoKEqn.H"
makeLESModel(NicenoKEqn);

#include "continuousGasKEqn.H"
makeLESModel(continuousGasKEqn);

#include "./kineticTheoryModels/kineticTheoryModel/kineticTheoryModel.H"
makeTurbulenceModel
(phaseModelPhaseCompressibleTurbulenceModel, RAS, kineticTheoryModel);

#include "./phasePressureModel/phasePressureModel.H"
makeTurbulenceModel
(phaseModelPhaseCompressibleTurbulenceModel, RAS, phasePressureModel);


// ************************************************************************* //
