#!/usr/bin/env sh

# Install latex with sudo apt-get install -y texlive-full

cp ../plots/* img

if [ "$1" = "-s" ]; then
  pdflatex -shell-escape report.tex > /dev/null 2>&1
  pdflatex -shell-escape report.tex > /dev/null 2>&1
  rm -f report.aux report.lof report.log report.out report.toc texput.log
else
  pdflatex -shell-escape report.tex
  pdflatex -shell-escape report.tex
fi
