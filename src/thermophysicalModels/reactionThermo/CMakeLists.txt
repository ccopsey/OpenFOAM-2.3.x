#
#   Copyright (C) 2014-15 Chris Copsey
#   
#   This file is part of ccFOAM.
#
#   ccFOAM is free software: you can redistribute it and/or modify it under the
#   terms of the GNU General Public License as published by the Free Software
#   Foundation, either version 3 of the License, or (at your option) any later
#   version.
#
#   ccFOAM is distributed in the hope that it will be useful, but WITHOUT ANY
#   WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
#   details.
#
#   You should have received a copy of the GNU General Public License along
#   with ccFOAM.  If not, see <http://www.gnu.org/licenses/>.
#

set(SOURCES
  chemistryReaders/chemkinReader/chemkinReader.C
  ${CMAKE_CURRENT_BINARY_DIR}/chemistryReaders/chemkinReader/chemkinLexer.C
  chemistryReaders/chemistryReader/makeChemistryReaders.C
  mixtures/basicMultiComponentMixture/basicMultiComponentMixture.C
  psiReactionThermo/psiReactionThermo.C
  psiReactionThermo/psiReactionThermos.C
  psiuReactionThermo/psiuReactionThermo.C
  psiuReactionThermo/psiuReactionThermos.C
  rhoReactionThermo/rhoReactionThermo.C
  rhoReactionThermo/rhoReactionThermos.C
  derivedFvPatchFields/fixedUnburntEnthalpy/fixedUnburntEnthalpyFvPatchScalarField.C
  derivedFvPatchFields/gradientUnburntEnthalpy/gradientUnburntEnthalpyFvPatchScalarField.C
  derivedFvPatchFields/mixedUnburntEnthalpy/mixedUnburntEnthalpyFvPatchScalarField.C
)

set(LIBRARIES
  libfiniteVolume
  libfluidThermophysicalModels
  libspecie
  libsolidSpecie
  libmeshTools
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/solidSpecie/include.cmake)
include(../../../src/meshTools/include.cmake)
include_directories(${FLEX_INCLUDE_DIR})

file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/chemistryReaders/chemkinReader)
flex_target(chemkinLexer chemistryReaders/chemkinReader/chemkinLexer.L ${CMAKE_CURRENT_BINARY_DIR}/chemistryReaders/chemkinReader/chemkinLexer.C COMPILE_FLAGS -+)

add_library(libreactionThermophysicalModels ${SOURCES})
set_target_properties(libreactionThermophysicalModels PROPERTIES PREFIX "")

target_link_libraries(libreactionThermophysicalModels ${LIBRARIES})

install(TARGETS libreactionThermophysicalModels DESTINATION lib OPTIONAL)
