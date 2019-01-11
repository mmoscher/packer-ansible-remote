FROM hashicorp/packer:latest
RUN apk add --update ansible

ENTRYPOINT ["bin/packer"]