FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update

RUN apt-get install -y tigervnc-server

RUN apt-get install -y xfce4

RUN apt-get install -y novnc

RUN apt-get install -y websockify

RUN apt-get install -y firefox

RUN apt-get install -y curl wget git

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.vnc

RUN chmod 700 /root/.vnc

RUN echo "vncpasswd123" | vncpasswd -f > /root/.vnc/passwd

RUN chmod 600 /root/.vnc/passwd

USER root
