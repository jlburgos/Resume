PAPER=resume
default:
	latex $(PAPER)
	latex $(PAPER)
	dvips -t letter $(PAPER)
	ps2pdf $(PAPER).ps
	rm -f *.ps *.log *.blg *.bbl *.aux *.dvi *.toc
clean:
	rm -f *pdf *.ps *.log *.blg *.bbl *.aux *.dvi *.toc *~
