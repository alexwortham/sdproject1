#!/bin/sh
xelatex -synctex=1 -interaction=nonstopmode requirements.tex
cp requirements.pdf ..
