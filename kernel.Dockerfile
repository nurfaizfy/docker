FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tzdata bc \
libssl-dev bison flex make git python3-all-dev \
curl wget zip cpio sudo libxml2 libc6 zstd \
libstdc++6 software-properties-common build-essential && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
