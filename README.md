# moiGanache

a Dockerized Ganache-CLI Container

# Docker command 
Check [here](https://github.com/trufflesuite/ganache-cli/blob/master/README.md) for more ganache-cli commands
```
docker pull moikapy/moiganache
docker run moikapy/moiganache ganache-cli -h 0.0.0.0 -q -n -s <seed>
```

# How to Run in docker-dompose.yml

```
version: '3'
services:
  ganache:
    image: moikapy/moiganache
    command: 'ganache-cli -h 0.0.0.0 -s <seed> --acctKeys <Where to Save Keys for later use> -e <Dev ETH> --chainId <chainID> -q -n'
    restart: always
    volumes:
      - .:/usr/app
    ports:
      - '8545:8545'
```
