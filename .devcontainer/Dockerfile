FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install basic packages
RUN apt-get update && apt-get install -y \
    docker.io \
    curl \
    git \
    sudo \
    build-essential \
    vim \
    python3 \
    python3-pip \
    && apt-get clean

# Create a non-root user (optional)
ARG USERNAME=devuser
RUN useradd -m $USERNAME && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME
