#!/bin/bash

set -e   # (errexit) Exit if any subcommand or pipeline returns a non-zero status
set -u   # (nounset) Exit on any attempt to use an uninitialised variable

if [ "$#" -ne 1 ]; then
    echo "Error: Illegal number of parameters"
    echo ""
    echo "Usage:"
    echo "  $0 <path-to-notebook>"
    echo ""
    exit 1
fi

tmpfile=$(mktemp)

jq --indent 1 \
    '
    (.cells[] | select(has("outputs")) | .outputs) = []
    | (.cells[] | select(has("execution_count")) | .execution_count) = null
    | .metadata = {}
    | .cells[].metadata = {}
    ' $1 > $tmpfile

mv $tmpfile $1
