FROM debian:bullseye-slim
LABEL MAINTAINER davralin

RUN \
  /usr/bin/apt-get -y update && \
  /usr/bin/apt-get -y install --no-install-recommends \
    atomicparsley \
    ca-certificates \
    coreutils \
    curl \
    ffmpeg \
    jq \
    python3-minimal \
    rename \
    webp \
    && \
    /bin/rm -rf /var/lib/apt/lists/* \
    curl --create-dirs --output /usr/local/bin/youtube-dl "https://yt-dl.org/downloads/latest/youtube-dl"
