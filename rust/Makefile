include ../dockervars.mk

RC = /root/.cargo/bin/rustc
CFLAGS = -C opt-level=2 -o

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
	$(DOCKERCMD) run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(RC) $(CFLAGS) $(BINARY) $(APPDIR)/source.rs;
	@echo "Build successul!";
