#!/bin/bash

# ARG_POSITIONAL_SINGLE([repo])
# ARG_DEFAULTS_POS
# ARG_HELP([<The general help message of my script>])
# ARGBASH_GO

# [ <-- needed because of Argbash

REPO=$_arg_repo
SUDO="sudo"

if [ "$(id -u)" == "0" ]
then
    SUDO=""
fi

if ! command -v git
then
    $SUDO apt-get update
    $SUDO apt-get install -y git
fi

git clone "$REPO" "$HOME"/.local/share/dotfiles

# ] <-- needed because of Argbash
