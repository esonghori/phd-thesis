MAIN = 0_main

all:
	pdflatex $(MAIN).tex
	makeglossaries $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	rm -f $(MAIN).acn $(MAIN).acr $(MAIN).alg $(MAIN).glo $(MAIN).gls $(MAIN).glg $(MAIN).ist $(MAIN).aux $(MAIN).blg $(MAIN).out $(MAIN).bbl $(MAIN).log $(MAIN).synctex.gz $(MAIN).toc texput.log $(MAIN).idx $(MAIN).lof $(MAIN).lot *.aux
