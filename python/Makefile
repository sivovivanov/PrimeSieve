include ../dockervars.mk

PY3 = /usr/bin/python3

run:
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(PY3) /app/source.py;
