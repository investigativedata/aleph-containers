FROM ghcr.io/investigativedata/ingest-file-spacy
ENV DEBIAN_FRONTEND noninteractive

LABEL org.opencontainers.image.title "FollowTheMoney File Ingestors"
LABEL org.opencontainers.image.licenses MIT
LABEL org.opencontainers.image.source https://github.com/investigativedata/aleph-ingest-file

COPY ./requirements.txt /tmp/
RUN pip3 install --no-cache-dir --prefer-binary -r /tmp/requirements.txt

COPY ./ingest-file /ingestors
WORKDIR /ingestors
RUN pip3 install --no-cache-dir --config-settings editable_mode=compat --use-pep517 -e /ingestors
RUN chown -R app:app /ingestors

# USER app
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["ingestors process"]
