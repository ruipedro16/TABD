#!/usr/bin/env sh

# Install latex with sudo apt-get install -y texlive-full

if [ "$1" = "-s" ]; then
  pdflatex report.tex > /dev/null 2>&1
  pdflatex report.tex > /dev/null 2>&1
  rm -f report.aux report.lof report.log report.out report.toc texput.log
else
  pdflatex report.tex
  pdflatex report.tex
fi
