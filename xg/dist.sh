#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

if ! [ -x "$(command -v cargo-v)" ]; then
  cargo install cargo-v
fi

cd xg_proc
cargo publish --allow-dirty --registry crates-io || true
cd ..
cargo publish --allow-dirty --registry crates-io || true
