/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2012 OpenFOAM Foundation
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
    foamHelp

Description
    Top level wrapper utility around foam help utilities

\*---------------------------------------------------------------------------*/

#include "./cfdTools/general/include/fvCFD.H"
#include "./helpTypes/helpType/helpType.H"

using namespace Foam;

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

int main(int argc, char *argv[])
{
    #include "./include/addRegionOption.H"
    if (argc < 2)
    {
        FatalError
            << "No help utility has been supplied" << nl
            << exit(FatalError);
    }

    const word utilityName = argv[1];

    Foam::autoPtr<Foam::helpType> utility
    (
        helpType::New(utilityName)
    );

    utility().init();

    #include "./include/setRootCase.H"
    #include "./include/createTime.H"
    #include "./include/createNamedMesh.H"

    utility().execute(args, mesh);

    Info<< "End\n" << endl;
}


// ************************************************************************* //
