FROM keymetrics/pm2:14-slim

ENV SERVERPREFIX /
ENV HTTP_PORT 4000

COPY . /data
WORKDIR /data

LABEL traefik.enable "true"
LABEL traefik.frontend.rule "Path: $SERVERPREFIX"
LABEL traefik.frontend.entryPoints "https"
LABEL traefik.protocol "http"
LABEL traefik.port "$HTTP_PORT"

RUN npm install --production

CMD [ "pm2-runtime" , "start" , "docker.config.js" ]