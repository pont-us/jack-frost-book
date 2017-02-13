The Jack Frost Tune-Book
========================

Installation
------------

Garamond installation for LaTeX: 

    wget http://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts
    chmod a+x install-getnonfreefonts
    sudo ./install-getnonfreefonts
    sudo getnonfreefonts-sys garamond


Garamond installation for LilyPond:

    sudo apt-get install enscript
    mkdir ~/.fonts/afm
    cd ~/.fonts/afm

[copy .pfb, .tfm, .afm files into ~/.fonts/afm from various subdirectories o    f /usr/local/share/texmf/fonts . Yes, all of them directly into ~/.fonts/afm -- don't preserve the directory hierarchy.]

    mkfontscale
    mkfontdir
    mkafmmap *.afm
    fc-cache -f -v

[scale/dir perhaps inverted? See http://ubuntuforums.org/showthread.php?t=452955]

2013-08-29:  some odd font errors when I tried to build the document, thus:

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


make.sh is not a proper makefile: a manual rm -r out/* is often necessary. (Or
perhaps just rm out/jack-frost-book.tex sometimes?)

