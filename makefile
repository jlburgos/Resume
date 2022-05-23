PAPER=resume.tex
default:
	pdflatex $(PAPER)
dockerized:
	docker run --interactive --tty --rm --volume $(CURDIR):/miktex/work miktex/miktex bash -x -c "mpm --admin --update; pdflatex $(PAPER)"
