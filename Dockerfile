FROM node:latest

WORKDIR /app

COPY package.json .

RUN npm install

ENV NODE_ENV production

COPY src .

CMD node index.js

USER node