all:
	rm -rf aleph
	git clone https://github.com/simonwoerpel/aleph.git
	cd aleph && git checkout config/elasticsearch
	docker build . -t aleph:latest
