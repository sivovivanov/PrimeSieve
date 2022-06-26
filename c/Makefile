include ../dockervars.mk

CC = gcc
CFLAGS = -Wall -Wextra -O3 -o

APPDIR = /app
BUILDDIR = build
BUILDNAME = sieve

BINARY = $(APPDIR)/$(BUILDDIR)/$(BUILDNAME)

run: compile
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(TIMECMD) $(BINARY);

compile:
	rm -rf $(BUILDDIR)/;
	mkdir $(BUILDDIR)/;
	@echo "Compiling...";
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(CC) $(CFLAGS) $(BINARY) $(APPDIR)/source.c;
	@echo "Build successul!";
