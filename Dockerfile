FROM nodered/node-red:4.0.8@sha256:871225abb46d62e434c75c73ec264c406ae1d0ea09b365ed9ffa122fdc327879

ARG CI_COMMIT_TIMESTAMP
ARG CI_COMMIT_SHA
ARG CI_COMMIT_TAG

LABEL org.opencontainers.image.authors="Daniel Muehlbachler-Pietrzykowski <daniel.muehlbachler@niftyside.com>"
LABEL org.opencontainers.image.vendor="Daniel Muehlbachler-Pietrzykowski"
LABEL org.opencontainers.image.source="https://github.com/muhlba91/node-red-container"
LABEL org.opencontainers.image.created="${CI_COMMIT_TIMESTAMP}"
LABEL org.opencontainers.image.title="node-red"
LABEL org.opencontainers.image.description="An opinionated Node-RED container"
LABEL org.opencontainers.image.revision="${CI_COMMIT_SHA}"
LABEL org.opencontainers.image.version="${CI_COMMIT_TAG}"

WORKDIR /usr/src/node-red

COPY assets/node-red-init.sh /bin/node-red-init

ENTRYPOINT [ "/bin/node-red-init" ]
