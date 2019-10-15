FROM hashicorp/packer:latest

FROM python:alpine
COPY --from=0 /bin/packer /bin/packer

RUN apk add --update alpine-sdk openssl-dev libffi-dev
RUN pip install --upgrade pip
RUN pip install 'ansible==2.8.5'
RUN apk add curl which bash openssh

ENTRYPOINT ["bin/packer"]