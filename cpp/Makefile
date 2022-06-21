IMGNAME = cpp
IMGTAG = latest

CONTNAME = jeff

APPDIR = /app
BUILDDIR = build
BUILDNAME = sieve

BINARY = $(APPDIR)/$(BUILDDIR)/$(BUILDNAME)

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD)

compile:
	rm -rf $(BUILDDIR)/
	mkdir $(BUILDDIR)/
	@echo "Compiling..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) g++ -Wall -Wextra -O3 -o $(BINARY) $(APPDIR)/source.cpp
	@echo "Build successul!"

run: compile
	@echo "Running sieve..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) $(BINARY)

clean:
	docker rmi $(IMGNAME):$(IMGTAG)
	rm -rf $(BUILDDIR)/
