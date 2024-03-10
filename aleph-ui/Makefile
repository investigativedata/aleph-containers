all: docker

aleph:
	git clone https://github.com/investigativedata/aleph

.PHONY: install
install: aleph
	cd aleph/ui ; npm i

aleph/ui/build: install
	cd aleph/ui ; npm run build

aleph/ui/build/static/pdf.worker.min.js: aleph/ui/build
	cp ./aleph/ui/node_modules/pdfjs-dist/build/pdf.worker.min.js $@

.PHONY: build
build: aleph/ui/build aleph/ui/build/static/pdf.worker.min.js

.PHONY: docker
docker: build
	docker build . -t aleph-ui

clean:
	rm -rf aleph
