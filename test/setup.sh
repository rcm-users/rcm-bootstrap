#!/bin/bash

for filename in "$TESTDIR"/../bin/* ; do
    chmod +x "$TESTDIR/../bin/$filename"
done

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"