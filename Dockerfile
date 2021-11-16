FROM node:12-alpine

ENV HOME=/home/app

COPY package.json package-lock.json $HOME/ssl/

WORKDIR $HOME/ssl

RUN npm install --silent --progress=false

COPY . $HOME/ssl

CMD ["node", "index.js"]
