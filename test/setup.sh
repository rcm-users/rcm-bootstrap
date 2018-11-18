#!/bin/bash

for filename in "$TESTDIR"/../bin/* ; do
    chmod +x "$filename"
done

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"