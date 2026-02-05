#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <timeout> <command> [args...]"
    echo "Example: $0 10s sleep 30"
    exit 1
fi

timeout -k 1s "$@"
status=$?

if [[ $status -eq 124 ]]; then
    echo "Command timed out"
fi

exit $status
