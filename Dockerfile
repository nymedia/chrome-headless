ARG BASE_IMAGE_TAG=latest
FROM zenika/alpine-chrome:${BASE_IMAGE_TAG}

LABEL maintainer="eiriksm <eirik@nymedia.no>"
LABEL description="Chrome driver for selenium testing"

ENV LOG_LEVEL=WARNING

EXPOSE 8643

# Use the "shell form" for ENTRYPOINT so we can do variable expansion:
# https://docs.docker.com/reference/dockerfile/#shell-form-entrypoint-example
ENTRYPOINT chromedriver --allowed-ips= --allowed-origins=* --port=8643 --url-base=wd/hub --headless --no-sandbox --whitelisted-ips= --log-level=$LOG_LEVEL
