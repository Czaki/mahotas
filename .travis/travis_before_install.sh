#!/usr/bin/env bash

mkdir -p ~/.local/bin
export PATH=$HOME/.local/bin:$PATH

if test -e $HOME/miniconda/bin; then
    echo "miniconda already installed."
else
    rm -rf $HOME/miniconda
    wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
    chmod +x miniconda.sh
    ./miniconda.sh -b -p $HOME/miniconda
fi
export PATH=$HOME/miniconda/bin:$PATH
conda update --yes --quiet conda

