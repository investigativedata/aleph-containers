all:
	rm -rf aleph
	git clone https://github.com/investigativedata/aleph.git
	cd aleph && git checkout develop
	docker build . -t io-aleph:latest
