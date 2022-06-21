IMGNAME = python
IMGTAG = latest

CONTNAME = jeff

buildimage:
	docker build -t $(IMGNAME):$(IMGTAG) $(PWD)

run:
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) /usr/bin/python3 /app/source.py

clean:
	docker rmi $(IMGNAME):$(IMGTAG)
