#!/usr/bin/env sh

# Install latex with sudo apt-get install -y texlive-full

cp ../plots/* img

pdflatex -shell-escape report.tex
pdflatex -shell-escape report.tex

rm -f report.aux report.lof report.log report.out report.toc texput.log
