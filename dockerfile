FROM node:20-alpine


ENV PORT 80

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY .next/standalone ./
COPY public ./public

EXPOSE $PORT

ENTRYPOINT ["node", "server.js"]