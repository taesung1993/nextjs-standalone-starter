FROM node:20-alpine


ENV PORT 80

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY ./public ./public
COPY /.next/standalone ./

EXPOSE $PORT

RUN npm install -g pnpm

ENTRYPOINT ["node", "server.js"]