#!/usr/bin/env sh

# Install latex with sudo apt-get install -y texlive-full

mkdir -p img
cp ../plots/* img
cp ../report/img/datawarehouse.pdf img

pdflatex -shell-escape slides.tex

rm -f slides.aux slides.fdb_latexmk slides.fls slides.log slides.nav slides.out slides.snm slides.toc 
rm -f slides.synctex.gz texput.log
