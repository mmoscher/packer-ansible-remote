FROM hashicorp/packer:latest
RUN apk add --update ansible \
    python \
    curl \
    which \
    bash

RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT ["bin/packer"]