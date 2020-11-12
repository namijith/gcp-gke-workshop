ARG BASE_IMAGE=gcr.io/${PROJECT_ID}/ubuntu:20.04
FROM ${BASE_IMAGE}

ARG JFROG_CLI_VERSION=1.40.1
#ARG USER_HOME_DIR="/root"

# PR submitted to download versioned JFrog CLI
RUN apt-get update -qqy && apt-get install -qqy curl nodejs apt-transport-https \
  && cd /tmp \
  && curl -fL https://getcli.jfrog.io | sh \
  && curl -sSL https://get.docker.com/ | sh \
  && mv jfrog /usr/bin/ \
  && apt-get remove -qqy --purge curl \
  && rm /var/lib/apt/lists/*_*

ENTRYPOINT ["jfrog"]
