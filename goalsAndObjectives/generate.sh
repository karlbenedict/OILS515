#!/bin/bash

/usr/local/bin/pandoc --toc -c ../page.css --self-contained --standalone goalsAndObjectives.md -o goalsAndObjectives.html

/usr/local/bin/pandoc --toc -c ../page.css --standalone goalsAndObjectives.md -o goalsAndObjectives.linked.html

/usr/local/bin/pandoc --toc  --template ../endFloat.latex --self-contained --standalone goalsAndObjectives.md -o goalsAndObjectives.pdf
