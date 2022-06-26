include dockervars.mk

all: c-sieve cpp-sieve python-sieve java-sieve clean buildimage
	@echo "Done!";

c-sieve:
	cd c && $(MAKE);

cpp-sieve:
	cd cpp && $(MAKE);

python-sieve:
	cd python && $(MAKE);

java-sieve:
	cd java && $(MAKE);

buildimage:
	$(DOCKERCMD) build -t $(IMGNAME):$(IMGTAG) $(PWD);

clean:
	$(DOCKERCMD) rmi $(IMGNAME):$(IMGTAG);
	rm -rf ./*/build;
