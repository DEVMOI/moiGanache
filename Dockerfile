FROM node:alpine
WORKDIR /usr/app
RUN npm i -g ganache-cli
EXPOSE 8545
RUN ["ganache-cli","-e 9001","-s devmoi","-h","0.0.0.0"]