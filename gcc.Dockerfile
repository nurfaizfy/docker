FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
apt install build-essential flex bison ncurses-dev texinfo curl \
gperf patch libtool automake libncurses5-dev gawk subversion expat \
libexpat1-dev python3-all-dev binutils-dev bc libcap-dev autoconf \
libgmp-dev pkg-config libmpc-dev libmpfr-dev autopoint gettext git \
txt2man liblzma-dev libssl-dev libz-dev mercurial wget tar zstd \
hub libzstd-dev cmake gcc-multilib g++-multilib -y  && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
