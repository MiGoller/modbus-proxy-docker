ARG ARG_PYTHON_VERSION=alpine

FROM python:${ARG_PYTHON_VERSION}

LABEL org.opencontainers.image.description="Docker image for Jose Tiago Macara Coutinho's modbus-proxy"

RUN pip install modbus-proxy modbus-proxy[yaml]

ENTRYPOINT ["modbus-proxy"]
CMD ["-c", "/config/modbus-proxy.yml"]
