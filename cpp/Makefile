include ../dockervars.mk

CC = g++
CFLAGS = -Wall -Wextra -O3 -o

APPDIR = /app
BUILDDIR = build
BUILDNAME = sieve

BINARY = $(APPDIR)/$(BUILDDIR)/$(BUILDNAME)

run: compile
	@echo "Running sieve..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(BINARY)

compile:
	rm -rf $(BUILDDIR)/
	mkdir $(BUILDDIR)/
	@echo "Compiling..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(CC) $(CFLAGS) $(BINARY) $(APPDIR)/source.cpp
	@echo "Build successul!"

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD)

clean:
	docker rmi $(IMGNAME):$(IMGTAG)
	rm -rf $(BUILDDIR)/
