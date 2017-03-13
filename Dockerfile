FROM ubuntu:trusty

RUN apt-get update

RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && apt-key fingerprint 0EBFCD88

RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

RUN apt-get update && apt-get install -y docker-ce

RUN apt-get install -y jq

RUN apt-get install -y python-pip && \
    pip install awscli && \
    pip install --upgrade awscli
