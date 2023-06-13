all:
	rm -rf aleph
	git clone https://github.com/investigativedata/aleph.git
	cd aleph && git checkout config/elasticsearch
	docker build . -t aleph-local:latest
