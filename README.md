# The Jack Frost Tune-Book

By Pontus Lurcock, 2008--2017.

## Introduction

In 2008, I was a musician and dancer with Jack Frost Morris in Dunedin,
New Zealand. Our repertoire was mostly handed down as oral tradition,
but a new musician had recently joined who preferred sheet music to
learning by ear. I took this as an excuse to typeset our repertoire
using Lilypond and LaTeX. (My first attempts were with Lilypond and
ConTeXt, but getting them to play nicely together was difficult.) In
2017, I stumbled across the project again and thought I may as well
release the source.

The collection comprises eleven tunes, with words where applicable, and
a final sheet of calling cards summarizing the dances. These are
intended to be cut out and used as pocket-sized cheat sheets by the
Squire.

## Build instructions

### Building the document

Ensure that LaTeX, Lilypond, and the Garamond font are correctly
installed (see ‘Requirements’ below). Once the requirements are in
place, simply run

    ./build.sh

to clear any existing intermediate and output files and rebuild the
tune-book from scratch.

## Output files

Running the build script will produce the output files `jack-frost.pdf`
and `jack-frost-easynote.pdf`. The first is the standard tune-book; the
second is a variant with ‘easynote’ notation, which places note names in
the note heads on the score. A directory called `build` is also created,
containing various intermediate files created during the build process.

### Requirements

LaTeX and Lilypond must be installed. Additionally, the tune-book
requires the non-free font Garamond, which can be installed as follows.

#### Garamond installation for LaTeX

If `getnonfreefonts-sys` is already available on the system, only the
final step is necessary.

    wget http://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts
    chmod a+x install-getnonfreefonts
    sudo ./install-getnonfreefonts
    sudo getnonfreefonts-sys garamond

#### Garamond installation for LilyPond

First ensure that Garamond is installed for LaTeX (see above).

The commands below will install the enscript package (which provides
`mkafmmap`) and ensure that a user `afm` font directory exists:

    sudo apt-get install enscript
    mkdir ~/.fonts/afm

Now copy the `.pfb`, `.tfm`, and `.afm` files into `~/.fonts/afm` from
their various subdirectories of `/usr/local/share/texmf/fonts` . Put all
the files directly into ~/.fonts/afm -- don't preserve the directory
hierarchy. Finally, execute the following commands:

    cd ~/.fonts/afm
    mkfontscale
    mkfontdir
    mkafmmap *.afm
    fc-cache -f -v

([Source](http://ubuntuforums.org/showthread.php?t=452955) -- note the
follow-up post correcting the ordering or mkfontscale and mkfontdir.)

### Miscellaneous build notes

This section just notes previous problems with the build process and
their solutions, in case the problems reappear in the future.

2013-08-29: some font errors when I tried to build the document, thus:

    kpathsea: Running mktexpk --mfmode / --bdpi 600 --mag 1+0/600 --dpi 600 ugmmi8r
    mktexpk: don't know how to create bitmap font for ugmmi8r.
    kpathsea: Appending font creation commands to missfont.log.
    (see the transcript file for additional information)
    !pdfTeX error: pdflatex (file ugmmi8r): Font ugmmi8r at 600 not found
     ==> Fatal error occurred, no output PDF file produced!

Fixed by commenting out

    \renewcommand{\rmdefault}{ugm} % garamond

and commenting in

    \usepackage[garamond]{mathdesign}

in `jack-frost.tex`.

## License

This work is licensed under the Creative Commons
Attribution-Noncommercial-Share Alike
3.0 New Zealand License. To view a copy of this license, visit
[http://creativecommons.org/licenses/by-nc-sa/3.0/nz/](http://creativecommons.org/licenses/by-nc-sa/3.0/nz/)
or send a letter to Creative Commons, 171 Second Street, Suite 300, San
Francisco, California, 94105, USA.

In summary, the licence states that you may copy, distribute, transmit,
and adapt this work freely, provided that you attribute the work and do
not use it for commercial purposes. And if you alter, transform, or
build upon this work, you may distribute the resulting work only under
the same or similar license to this one.
