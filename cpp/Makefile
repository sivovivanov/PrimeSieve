IMGNAME = cpp
IMGTAG = latest

CONTNAME = jeff

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD)

compile:
	@echo "Compiling..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) g++ -Wall -Wextra -o /app/sieve.o /app/source.cpp
	@echo "Build successul!"

run: compile
	@echo "Running sieve..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) /app/sieve

clean:
	docker rmi $(IMGNAME):$(IMGTAG)
