FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/pdfarranger"

RUN apt-get update && \
    apt-get install -y --no-install-recommends pdfarranger && \
    cpak-clean-junk

COPY com.github.jeromerobert.pdfarranger.desktop /usr/share/applications/com.github.jeromerobert.pdfarranger.desktop
