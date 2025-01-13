FROM node:20-alpine


ENV PORT 80

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json package.json
COPY public public
COPY next.config.ts next.config.ts

EXPOSE $PORT

RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run build

ENTRYPOINT ["pnpm", "start"]