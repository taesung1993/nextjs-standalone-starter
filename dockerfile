FROM node:20.11.1-alpine3.18  as common-build-stage

ENV PORT 80

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY ./public ./public
COPY ./.next/standalone ./

EXPOSE $PORT

ENTRYPOINT ["node", "server.js"]