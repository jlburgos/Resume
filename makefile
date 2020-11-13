PAPER=resume.tex
default:
	pdflatex $(PAPER)
dockerized:
	docker run -it --rm -v $(CURDIR):/miktex/work miktex/miktex bash -x -c "mpm --admin --update; pdflatex $(PAPER)"
