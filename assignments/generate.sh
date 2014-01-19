#!/bin/bash

/usr/local/bin/pandoc --toc -c ../page.css --self-contained --standalone assignments.md -o assignments.html

/usr/local/bin/pandoc --toc -c ../page.css --standalone assignments.md -o assignments.linked.html

/usr/local/bin/pandoc --template ~/Dropbox/Active/Repos/Pandoc\ Templates/default_endFloat.latex --self-contained --standalone assignments.md -o assignments.pdf
