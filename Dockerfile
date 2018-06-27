FROM zenika/alpine-chrome
MAINTAINER eiriksm <eirik@nymedia.no>
USER root
RUN apk add --update chromium-chromedriver
ENTRYPOINT ["chromedriver",  "--port=8643", "--url-base=wd/hub", "--headless", "--no-sandbox", "--whitelisted-ips=''"]
EXPOSE 8643

