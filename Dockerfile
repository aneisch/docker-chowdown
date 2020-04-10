FROM alpine:latest

COPY chowdown.sh /usr/local/bin/chowdown.sh
RUN chmod +x /usr/local/bin/chowdown.sh

COPY app/ /opt/app/

RUN apk add --update --no-cache ruby ruby-json ruby-bigdecimal ruby-webrick ruby-etc libffi libstdc++ \
    && apk add --virtual build-dependencies build-base ruby-dev libffi-dev \
    && gem install jekyll --no-document \
    && gem cleanup \
    && apk del build-dependencies

EXPOSE 4000
VOLUME /config

CMD [ "sh", "/usr/local/bin/chowdown.sh" ]
