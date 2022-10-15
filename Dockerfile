FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \ 
      build-essential git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi python3

WORKDIR /home/data