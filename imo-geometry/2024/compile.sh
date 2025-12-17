#!/bin/bash
set -e

name="${1%.tex}"

latexmk -pdf -outdir=build "$1"
cp "build/$name.pdf" .