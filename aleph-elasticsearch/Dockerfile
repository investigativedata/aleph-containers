FROM bitnami/elasticsearch:8-debian-11
LABEL org.opencontainers.image.source = "https://github.com/investigativedata/aleph-elasticsearch"

ENV ELASTICSEARCH_PLUGINS=analysis-icu

COPY --chown=bitnami synonames.txt /opt/bitnami/elasticsearch/config/

