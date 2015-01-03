#ifndef curveTools_H
#define curveTools_H

#include "./primitives/Scalar/scalar/scalar.H"
#include "./primitives/Vector/vector/vector.H"
#include "./curve.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{

#define curveSmall 1.0e-8
#define curveGreat 1.0e8

#include "./primitives/chars/char/char.H"
#include "./containers/Lists/List/List.H"

typedef List<char> charList;
typedef List<charList> charListList;


scalar distance(const vector&, const vector&);


bool stepForwardsToNextPoint
(
    const vector&,
    vector&,
    label&,
    label&,
    scalar,
    const curve&
);


bool stepBackwardsToNextPoint
(
    const vector&,
    vector&,
    label&,
    label&,
    scalar,
    const curve&
);


bool interpolate
(
    const vector&,
    const vector&,
    const vector&,
    vector&,
    scalar
);


bool XstepForwardsToNextPoint
(
    const vector&,
    vector&,
    label&,
    label&,
    scalar,
    const curve&
);


bool Xinterpolate
(
    const vector&,
    const vector&,
    const vector&,
    vector&,
    scalar
);


// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

} // End namespace Foam

#endif
