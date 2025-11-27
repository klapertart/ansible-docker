FROM ubuntu:22.04

# Disable tzdata interaction
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    python3 python3-pip \
    openssh-client sshpass \
    ansible \
    && apt clean

WORKDIR /playbooks
