# Gunakan base image Ubuntu
FROM ubuntu:22.04

# Set non-interaktif supaya tidak ada prompt waktu install
ENV DEBIAN_FRONTEND=noninteractive

# Update dan install dependencies dasar
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    g++ \
    curl \
    git \
    docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Tambahkan user non-root jika diperlukan (opsional)
# RUN useradd -ms /bin/bash devuser
# USER devuser

# Atur direktori kerja
WORKDIR /workspace

# Default command
CMD [ "bash" ]

