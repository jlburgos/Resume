PAPER=resume.tex
default:
	pdflatex $(PAPER)
	rm -f *.ps *.log *.blg *.bbl *.aux *.dvi *.toc *.synctex.gz
