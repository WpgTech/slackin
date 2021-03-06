FROM node:4

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install -g npm@3

RUN npm install --unsafe-perm

EXPOSE 3000

CMD ./bin/slackin --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN
