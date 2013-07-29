#!/bin/bash
# This script processes the provided asciidoc txt file to generate
# the corresponding PDF and HTML files and moves the files into the 
# sibling directories relative to the current directory.
#
# K. Benedict
# Created: 7/28/2013

MYFILE=$1		# read the first provided parameter and assign it to MYFILE
FILEBASE=${MYFILE%.txt*}
echo "Base file name = "$FILEBASE

echo 
echo "==========================="
echo "=== Now starting processing"
echo

echo "+++++ now startng the PDF generation +++++"
### Process and move the PDF file ####################
a2x  -fpdf --fop --xsltproc-opts="--stringparam paper.type USletter" --xsltproc-opts="--stringparam body.font.master 10" --xsltproc-opts="--stringparam body.font.family sans-serif" $MYFILE

mv $FILEBASE".pdf" ../pdf

echo
echo "+++++ now starting the HTML5 generation +++++"
### Process and move the self-contained HTML5 file ##
asciidoc -a data-uri -a icons -a toc -a max-width=55em -b html5 $MYFILE

mv $FILEBASE".html" ../html
