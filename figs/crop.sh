#!/bin/sh

rm -f *-crop.pdf
for pdffile in $(ls *.pdf); do
	pdfcrop $pdffile
done