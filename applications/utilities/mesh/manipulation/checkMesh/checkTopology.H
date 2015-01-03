#include "./primitives/ints/label/label.H"
#include "./primitives/strings/lists/wordList.H"

namespace Foam
{
    class polyMesh;

    label checkTopology(const polyMesh&, const bool, const bool);
}
