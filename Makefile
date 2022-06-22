export IMGNAME = sieveimg
export IMGTAG = latest

export CONTNAME = jeff

all: python-sieve cpp-sieve

python-sieve:
	cd python && $(MAKE)

cpp-sieve:
	cd cpp && $(MAKE)

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD)
