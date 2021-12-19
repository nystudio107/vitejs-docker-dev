ARG TAG=16-alpine
ARG VITE_REPO=https://github.com/vitejs/vite.git
ARG VITE_DIR=vite

FROM node:$TAG

ENV VITE_REPO=$VITE_REPO
ENV VITE_DIR=$VITE_DIR

WORKDIR /app

# Install packages
RUN set -eux; \
    # Packages to install
    apk add --no-cache \
        git \
    && \
    # Clean out directories that don't need to be part of the image
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && \
    npm install -g pnpm

CMD ["pnpm run dev"]

ENTRYPOINT ["/bin/sh"]
