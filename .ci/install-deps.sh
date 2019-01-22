#!/usr/bin/env bash

ARGBASH_VERSION="2.7.1"

pip install pipenv
pipenv install --three

curl -Lo argbash.zip "https://github.com/matejak/argbash/archive/$ARGBASH_VERSION.zip"
unzip -o argbash.zip
(
    cd "argbash-$ARGBASH_VERSION"/resources || exit 1
    make install PREFIX="$HOME/.local"
)

rm -rf argbash*
