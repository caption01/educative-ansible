# Base Image
FROM ubuntu:latest

RUN apt-get update; \
    apt install -y openssh-client; \
    apt install -y python3-pip

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install boto3; \
    pip3 install boto \

RUN apt install -y sshpass \
    pip3 install "pywinrm>=0.3.0"