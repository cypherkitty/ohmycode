#!/usr/bin/env bash

set -e

# Build the project
cd meta-state
npm run build

cd ..

rm -rf css
rm -rf js
rm -rf index.html

cp -r meta-state/dist/css .
cp -r meta-state/dist/js .
cp meta-state/dist/index.html .
