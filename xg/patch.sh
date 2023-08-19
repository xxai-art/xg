#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cargo v patch -y
cd ./xg_proc
cargo v patch -y
