run:
	@echo "Running sieve..."
	docker run --rm --name $(CONTNAME) -v "$(PWD)":/app $(IMGNAME):$(IMGTAG) /usr/bin/python3 /app/source.py

clean:
	docker rmi $(IMGNAME):$(IMGTAG)
