#!/bin/bash

/usr/local/bin/pandoc --toc -c page.css --standalone -o goalsAndObjectives.html goalsAndObjectives.md

/usr/local/bin/pandoc --standalone --toc --latex-engine=pdflatex  -V geometry:margin=1in -V fontsize:11pt  -o goalsAndObjectives.pdf goalsAndObjectives.md
