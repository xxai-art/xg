#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: $0 name"
  exit 1
fi

rm -rf $1
cp -R xg $1
cd $1
mv xg_proc $1_proc
