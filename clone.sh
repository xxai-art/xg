#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: $0 name"
  exit 1
fi

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex
rm -rf $1
cp -R xg $1
cd $1

mv xg_proc $1_proc
rpl xg_proc $1_proc
fileli=$(fd --type file --hidden --exclude .git)
sd PG $(echo $1 | tr '[:lower:]' '[:upper:]') $fileli
sd xg $1 $fileli
sd "xxai-art/$1" "xxai-art/xg" Cargo.toml
./dist.sh
