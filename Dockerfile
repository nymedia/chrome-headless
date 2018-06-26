FROM zenika/alpine-chrome
MAINTAINER eiriksm <eirik@nymedia.no>
USER root
RUN apk add --update chromium-chromedriver
EXPOSE 8643

CMD ["chromedriver",  "--port=8643", "--url-base=wd/hub", "--headless", "--no-sandbox"]
