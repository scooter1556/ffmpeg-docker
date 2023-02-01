ARG ARCH= 
FROM ${ARCH}ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install ffmpeg -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["ffmpeg", "-y"]
