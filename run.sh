#!/bin/bash

set -euox

git fetch -p
git reset --hard origin/master
git pull
make install
