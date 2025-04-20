ARG BASE_IMAGE="ghcr.io/gbraad-devenv/fedora/rdesktop"
ARG BASE_VERSION="41"

FROM ${BASE_IMAGE}:${BASE_VERSION}

LABEL org.opencontainers.image.source = "https://github.com/gbraad-apps/code"

RUN curl -fL https://code.visualstudio.com/sha/download?build=stable\&os=linux-rpm-x64 -o code.rpm \
    && dnf install -y code.rpm \
    && rm -f code.rpm \
    && dnf clean all \
    && rm -rf /var/cache/yum \
    && git config -f /etc/rdesktop/rdesktop.ini rdesktop.title "Personal VS Code" \
    && git config -f /etc/rdesktop/rdesktop.ini rdesktop.exec "/usr/bin/code --no-sandbox"

# ensure to become root for systemd
#ENTRYPOINT ["/sbin/init"]