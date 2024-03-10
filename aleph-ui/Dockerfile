FROM ghcr.io/investigativedata/aleph-ui:${ALEPH_TAG:-latest} AS builder

LABEL org.opencontainers.image.source = "https://github.com/investigativedata/aleph-ui"

RUN npm run build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /alephui/build /assets
