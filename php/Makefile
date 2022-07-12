include ../dockervars.mk

PHP = /usr/bin/php

run:
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(TIMECMD) $(PHP) /app/source.php;
