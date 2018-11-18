#!/bin/bash

find "$TESTDIR"/../bin/. -name "!(*.in)" -exec chmod +x {} \;

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"