#!/bin/bash
/usr/local/bin/pandoc -s --template ~/Dropbox/Active/Repos/Pandoc\ Templates/default_endFloat.latex -o OILS515_syllabus.pdf OILS515_syllabus.md
/usr/local/bin/pandoc -s --self-contained --css=page.css -o OILS515_syllabus.html OILS515_syllabus.md
/usr/local/bin/pandoc -s --epub-stylesheet=page.css -o OILS515_syllabus.epub OILS515_syllabus.md

