#!/bin/bash

set -eEu

for dockerfile in ./Dockerfile_*; do

    distro="${dockerfile#.*_}"
    echo "Testing ${distro}"
    docker run --rm "shellcheck:${distro}"
    echo
done
