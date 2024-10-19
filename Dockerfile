FROM kalilinux/kali-last-release:latest AS base

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update -y && \
    apt-get install kali-linux-headless -y

RUN apt-get autoremove -y && \
    apt-get clean -y


USER kali

RUN msfdb init

