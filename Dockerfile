ARG ARG_PYTHON_VERSION=alpine

FROM python:${ARG_PYTHON_VERSION}

LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="MIT" \
    org.label-schema.name="MiGoller" \
    org.label-schema.vendor="MiGoller" \
    org.label-schema.description="modbus-proxy" \
    org.label-schema.url="https://github.com/MiGoller/modbus-proxy-docker" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-url="https://github.com/MiGoller/modbus-proxy-docker.git" \
    maintainer="MiGoller" \
    Author="MiGoller" \
    org.opencontainers.image.description="Docker image for [Jose Tiago Macara Coutinho](https://github.com/tiagocoutinho)'s [ModBus TCP proxy](https://github.com/tiagocoutinho/modbus-proxy)" \
    org.opencontainers.image.source="https://github.com/MiGoller/modbus-proxy-docker"
    
RUN pip install modbus-proxy modbus-proxy[yaml]

ENTRYPOINT ["modbus-proxy"]
CMD ["-c", "/config/modbus-proxy.yml"]
