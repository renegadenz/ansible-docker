FROM python:3.7-alpine

RUN apk add --no-cache \
    ansible \
    openssh-client

COPY . /ansible

WORKDIR /ansible

CMD ["ansible-playbook", "deploy.yml"]

