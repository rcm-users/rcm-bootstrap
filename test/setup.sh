#!/bin/bash

shopt -s extglob

for filename in "$TESTDIR"/../bin/*!(.in) ; do
    chmod +x "$TESTDIR/../bin/$filename"
done

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"