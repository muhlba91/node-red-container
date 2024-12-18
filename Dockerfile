FROM nodered/node-red:4.0.7@sha256:4c54cee64a41038bbed95207e964fafbeb06b8060ab3e48d649d4b2d57a4dbef

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
