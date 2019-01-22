#!/bin/sh

find "$TESTDIR/../bin/" -type f ! -name "*.in" -exec chmod +x {} \;

TEMPDIR=$(mktemp -d -t rcb)
export HOME="$TEMPDIR"
export PATH="$TESTDIR/../bin:$PATH"

(
    cd "$TESTDIR/../bin" || exit 1
    if [ ! -f bootstrap ] ; then
        mv "bootstrap-$(uname)" bootstrap
    fi
)

function clean() {
    rm -rf "$HOME"
}
