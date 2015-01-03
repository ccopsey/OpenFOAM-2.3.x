#include "./cfdTools/general/include/readTimeControls.H"

scalar maxAcousticCo
(
    readScalar(runTime.controlDict().lookup("maxAcousticCo"))
);
