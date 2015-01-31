#!/bin/sh
xelatex -synctex=1 -interaction=nonstopmode requirements.tex
for ARG in $* ; do
  if [ "$ARG" = "--publish" ]; then
    cp requirements.pdf ..
  fi
  if [ "$ARG" = "--view" ]; then
    evince requirements.pdf &
  fi
done
echo ""
