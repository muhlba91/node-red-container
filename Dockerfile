FROM nodered/node-red:5.0.8@sha256:14a10a45799133122d7ec2e38e01e53c88dda5ba2867000f4d08cc6d1bcd0a10

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
