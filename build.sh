#!/bin/bash

set -e # exit immediately on error

function setup {
  rm -rf build
  mkdir build
  cp -r includes/ build/
  cp includes/licence.xmp build/
}

function compile {
  lilypond-book --output=build --pdf jack-frost.tex
  pushd build
  pdflatex jack-frost.tex
  popd
}

setup
compile
mv build/jack-frost.pdf .

setup
pushd build/includes
mv -f staffheader-easynote.ly staffheader.ly
popd
compile
mv build/jack-frost.pdf jack-frost-easynote.pdf
