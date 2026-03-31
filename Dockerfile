FROM node:20.12.2

# hadolint ignore=DL3008,DL3015
RUN apt-get update && apt-get install -y --no-install-recommends make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
