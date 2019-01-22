#!/usr/bin/env bash

mkdir -p bin
(
    cd bin
    rm -f bootstrap
    rm -f bootstrap-*
    cp ../src/* .
    j2 -g *.j2 2> /dev/null
    rm *.j2*
    for f in * ; do mv -- "$f" "bootstrap-$f" ; done
)
