#!/bin/bash

set -eEu

for dockerfile in ./Dockerfile_*; do

    distro="${dockerfile#.*_}"
    docker build -f "${dockerfile}" -t "shellcheck:${distro}" .
done
