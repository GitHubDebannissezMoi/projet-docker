# Créer un Dockerfile pour cette application en mode production

FROM node:20 as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build


CMD [ "node", "build/index.js" ]
