FROM node:12

RUN apt-get update && apt-get install -y \
 build-essential \
 git \
 python \
 curl \
 vim \
 sudo

USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

WORKDIR /home/node/

RUN npm i -g @aragon/cli

RUN ( echo "y" && cat) | aragon ipfs install

RUN ipfs init

WORKDIR /home/node/.aragon

COPY . .

CMD [ "bash" ]