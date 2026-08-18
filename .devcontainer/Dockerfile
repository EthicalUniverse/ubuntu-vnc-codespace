FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    tigervnc-server \
    xfce4 \
    xfce4-terminal \
    novnc \
    websockify \
    firefox \
    curl \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.vnc

RUN echo "123456" | vncpasswd -f > /root/.vnc/passwd && chmod 600 /root/.vnc/passwd

EXPOSE 5901 6080

CMD ["/bin/bash"]
