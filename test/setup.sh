#!/bin/bash

find "$TESTDIR"/../bin/ -type f ! -name "*.in" -exec chmod +x {} \;

export HOME="$PWD"
export PATH="$TESTDIR/../bin:$PATH"