FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.0
LABEL org.opencontainers.image.source = "https://github.com/investigativedata/aleph-elasticsearch"

RUN bin/elasticsearch-plugin install --batch repository-s3 \
    && bin/elasticsearch-plugin install --batch repository-gcs \
    && bin/elasticsearch-plugin install --batch analysis-icu

COPY k8s-entrypoint.sh /k8s-entrypoint.sh
COPY --chown=1000 synonames.txt /usr/share/elasticsearch/config/

USER 1000

ENTRYPOINT [ "/k8s-entrypoint.sh" ]
