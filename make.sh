#!/bin/bash

set -e # exit immediately on error

rm -r out/*
cp -r includes/ out/
lilypond-book --output=out --pdf jack-frost.tex
cp includes/licence.xmp out/
cd out
pdflatex jack-frost.tex
