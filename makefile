PAPER=resume
default:
	pdflatex $(PAPER)
clean:
	rm -f *.ps *.log *.blg *.bbl *.aux *.dvi *.toc *.synctex.gz
