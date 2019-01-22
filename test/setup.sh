#!/bin/bash

find "$TESTDIR/../bin/" -type f ! -name "*.in" -exec chmod +x {} \;

TEMPDIR=$(mktemp -d -t rcb)
export HOME="$TEMPDIR"
export PATH="$TESTDIR/../bin:$PATH"

(
    cd "$TESTDIR/../bin" || exit 1
    mv "bootstrap-$(uname)" bootstrap
)

function clean() {
    rm -rf "$HOME"
}
