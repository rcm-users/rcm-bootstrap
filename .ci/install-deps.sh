#!/usr/bin/env bash

ARGBASH_VERSION="2.7.1"

pip install cram

curl -Lo argbash.zip "https://github.com/matejak/argbash/archive/$ARGBASH_VERSION.zip"
unzip -o argbash.zip
cd "argbash-$ARGBASH_VERSION"/resources
make install PREFIX=$HOME/.local

cd -
rm -rf argbash*