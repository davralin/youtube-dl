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
    python-is-python3 \
    rename \
    webp \
    && \
    /bin/rm -rf /var/lib/apt/lists/* && \
    /usr/bin/curl -L --create-dirs --output /usr/local/bin/youtube-dl "https://yt-dl.org/downloads/latest/youtube-dl" && \
    /bin/chmod 0755 /usr/local/bin/youtube-dl
    /usr/bin/curl -L --create-dirs --output /usr/local/bin/yt-dlp "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp" && \
    /bin/chmod 0755 /usr/local/bin/yt-dlp
