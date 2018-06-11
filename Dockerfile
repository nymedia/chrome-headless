FROM zenika/alpine-chrome
MAINTAINER eiriksm <eirik@nymedia.no>
USER root
RUN apk add --update nodejs nodejs-npm &&\
  npm i chromedriver &&\
  ln -s $(pwd)/node_modules/.bin/chromedriver /usr/local/bin

EXPOSE 8643

CMD ["chromedriver",  "--port=8643", "--url-base=wd/hub", "--headless", "--disable-gpu", "--no-sandbox" ]
