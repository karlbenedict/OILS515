#!/bin/bash

find . -iname "*.md" -exec /usr/local/bin/pandoc --slide-level 3 -c slides.css -c slidesSpecific.css --self-contained --standalone -t dzslides \{\} -o \{\}.slides.html \;
find . -iname "*.md" -exec /usr/local/bin/pandoc --slide-level 3 -c slides.css -c slidesSpecific.css --standalone -t dzslides \{\} -o \{\}.slides.linked.html \;
find . -iname "*.md" -exec /usr/local/bin/pandoc --toc -c ../page.css --self-contained --standalone \{\} -o \{\}.html \;
find . -iname "*.md" -exec /usr/local/bin/pandoc --toc -c ../page.css --standalone \{\} -o \{\}.linked.html \;
find . -iname "*.md" -exec /usr/local/bin/pandoc --standalone --toc --latex-engine=pdflatex  -V geometry:margin=1in -V fontsize:11pt  \{\} -o \{\}.pdf \;

