FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
apt install bc binutils-dev bison build-essential ca-certificates \
ccache clang cmake curl file flex git hub libelf-dev libssl-dev \
libstdc++-$(apt list libstdc++6 2>/dev/null | grep -Eos '[0-9]+\.[0-9]+\.[0-9]+' | head -1 | cut -d . -f 1)-dev \
lld make ninja-build python3-dev texinfo u-boot-tools xz-utils zlib1g-dev -y  && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
