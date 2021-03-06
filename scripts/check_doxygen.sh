#!/bin/bash
# Copyright (c) 2014-2015 Kartik Kumar, Dinamica Srl
# Copyright (c) 2014-2015 Marko Jankovic, DFKI GmbH
# Copyright (c) 2014-2015 Natalia Ortiz, University of Southampton
# Copyright (c) 2014-2015 Juan Romero, University of Strathclyde
# Distributed under the MIT License.
# See accompanying file LICENSE.md or copy at http://opensource.org/licenses/MIT

set -ev

# Count the number of warnings when building Doxygen output.
warnings=$(make doxygen_docs 2>&1 >/dev/null | wc -l)
if [[ $warnings -ne 0 ]]; then
  # Print the output.
  make doxygen_docs
  echo "Found Doxygen warnings"
  exit 1
fi;