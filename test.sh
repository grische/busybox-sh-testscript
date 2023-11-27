#!/bin/bash

set -eEu

for dockerfile in ./Dockerfile_*; do

    distro="${dockerfile#.*_}"
    echo "Testing ${distro}"
    docker run "shellcheck:${distro}"
    echo
done
