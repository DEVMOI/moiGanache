FROM node:lts
WORKDIR /usr/app
RUN npm i -g ganache-cli
COPY . .
EXPOSE 8545
ENTRYPOINT [ "moiGanache" ]
