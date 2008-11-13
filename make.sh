#!/bin/bash

lilypond-book --output=out --pdf jack-frost.tex
cp includes/licence.xmp out/
cd out
pdflatex jack-frost.tex
