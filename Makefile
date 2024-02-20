all: aleph elasticsearch ingest up

.PHONY: aleph
aleph:
	cd ./aleph && make

.PHONY: elasticsearch
elasticsearch:
	cd ./aleph-elasticsearch && docker build . -t io-elasticsearch

.PHONY: ingest
ingest:
	cd ./aleph-ingest && make

up:
	docker compose -f ./docker-compose.yml up
