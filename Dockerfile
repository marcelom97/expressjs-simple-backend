FROM node:current-slim

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 5000

CMD [ "yarn", "app.js" ]