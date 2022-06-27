include ../dockervars.mk

NODE = /usr/bin/nodejs

run:
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(TIMECMD) $(NODE) /app/source.js;
