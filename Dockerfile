FROM debian:11-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386
RUN apt update
RUN apt install -y libpam0g:i386 libx11-6:i386 libstdc++5:i386
RUN apt install -y curl libnss3-tools procps net-tools bzip2 openjdk-11-jre kmod expect iptables iputils-ping iproute2
RUN apt install -y firefox-esr
RUN rm -rf /var/lib/apt/lists/*

COPY ./fake /fake
ENV PATH=/fake:$PATH

COPY ./setup /setup

# snx
RUN bash /setup/snx_install.sh

# cshell
RUN ln -s /fake/.mozilla /root
RUN mkdir -p /root/.config/autostart
RUN bash /setup/cshell_install.sh


CMD ["/fake/run"]