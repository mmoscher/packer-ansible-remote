FROM hashicorp/packer:latest

RUN apk add --update ansible

WORKDIR $GOPATH
ENTRYPOINT ["bin/packer"]