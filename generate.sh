#!/bin/bash
/usr/local/bin/pandoc --standalone --toc --latex-engine=pdflatex  -V geometry:margin=1in -V fontsize:11pt -o OILS515_syllabus.pdf OILS515_syllabus.md
/usr/local/bin/pandoc --toc -s --standalone --css=page.css -o OILS515_syllabus.html OILS515_syllabus.md
/usr/local/bin/pandoc -s --epub-stylesheet=page.css -o OILS515_syllabus.epub OILS515_syllabus.md

