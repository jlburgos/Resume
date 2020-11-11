PAPER=resume.tex
default:
	## When latex is installed locally
	pdflatex $(PAPER)
dockerized:
	## Official miktex docker image has issues on my WIN 10 machine...
	## Managed to workaround my problem following suggestions here: https://github.com/MiKTeX/docker-miktex/issues/13#issuecomment-578124557
	docker run -it --rm -v $(CURDIR):/miktex/work miktex/miktex bash -c "mpm --admin --update; pdflatex $(PAPER)"
