#!/bin/bash

/usr/local/bin/pandoc --slide-level 3 -c slides.css --self-contained --standalone -t dzslides OILS515_01.md -o OILS515_01.slides.html
/usr/local/bin/pandoc --slide-level 3 -c slides.css --standalone -t dzslides OILS515_01.md -o OILS515_01.slides.linked.html

/usr/local/bin/pandoc -c ../page.css --self-contained --standalone OILS515_01.md -o OILS515_01.html
/usr/local/bin/pandoc -c ../page.css --standalone OILS515_01.md -o OILS515_01.linked.html

/usr/local/bin/pandoc --template ~/Dropbox/Active/Repos/Pandoc\ Templates/default_endFloat.latex --self-contained --standalone OILS515_01.md -o OILS515_01.pdf