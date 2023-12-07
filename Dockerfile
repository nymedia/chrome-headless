ARG BASE_IMAGE_TAG=latest
FROM zenika/alpine-chrome:${BASE_IMAGE_TAG}

LABEL maintainer="eiriksm <eirik@nymedia.no>"
LABEL description="Chrome driver for selenium testing"

EXPOSE 8643
ENTRYPOINT ["chromedriver", "--allowed-ips=","--allowed-origins=*", "--port=8643", "--url-base=wd/hub", "--headless", "--no-sandbox", "--whitelisted-ips="]
