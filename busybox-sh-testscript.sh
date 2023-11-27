#!/bin/busybox sh

 X="thisisastring"

stop() {
    echo stopping
    exit 0
}
# SC3048
trap stop EXIT SIGTERM SIGINT

# SC3010 and SC3014
[[ $X == "thisisastring" ]] && echo "this shell supports == and [[ ]]"

# SC3020
echo "busybox sh supports &>" &> /dev/null

# SC3046/SC3051
source /dev/null

# SC3057
echo "${X:0:4} shell supports ${X:7} indexing" # "this shell supports string indexing"

# SC3060
echo "${X/string/magic}"

