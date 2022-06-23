include dockervars.mk

all: python-sieve cpp-sieve
	@echo "Done!";

python-sieve:
	cd python && $(MAKE);

cpp-sieve:
	cd cpp && $(MAKE);

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD);

clean:
	docker rmi $(IMGNAME):$(IMGTAG);
	rm -rf ./*/build;
