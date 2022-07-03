include dockervars.mk

all: c-sieve cpp-sieve python-sieve java-sieve js-sieve rust-sieve clean buildimage
	@echo "Done!";

c-sieve:
	cd c && $(MAKE);

cpp-sieve:
	cd cpp && $(MAKE);

python-sieve:
	cd python && $(MAKE);

java-sieve:
	cd java && $(MAKE);

js-sieve:
	cd js && $(MAKE);

rust-sieve:
	cd rust && $(MAKE);

buildimage:
	$(DOCKERCMD) build -t $(IMGNAME):$(IMGTAG) $(PWD);

container:
	$(DOCKERCMD) run -it --rm $(IMGNAME):$(IMGTAG);

clean:
	$(DOCKERCMD) rmi $(IMGNAME):$(IMGTAG);
	rm -rf ./*/build;
