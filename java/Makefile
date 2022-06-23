include ../dockervars.mk

JAVA = /usr/bin/java

run:
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(TIMECMD) $(JAVA) /app/source.java;
