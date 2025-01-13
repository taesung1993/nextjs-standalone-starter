FROM node:20-alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY node_modules node_modules
COPY package.json package.json
COPY public public
COPY .next .next
COPY next.config.ts next.config.ts

EXPOSE 3000

ENTRYPOINT ["pnpm", "start"]