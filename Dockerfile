FROM node:alpine
WORKDIR /usr/app
RUN npm i -g ganache-cli
EXPOSE 8545