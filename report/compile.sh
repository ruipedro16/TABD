#!/usr/bin/env sh

# Install latex with sudo apt-get install -y texlive-full

pdflatex -shell-escape report.tex
pdflatex -shell-escape report.tex

rm -f report.aux report.fdb_latexmk report.fls report.lof report.log report.out report.toc texput.log report.pyg
