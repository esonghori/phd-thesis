MAIN = 0_main

all:
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	rm -f $(MAIN).aux $(MAIN).blg $(MAIN).out $(MAIN).bbl $(MAIN).log $(MAIN).synctex.gz $(MAIN).toc texput.log
