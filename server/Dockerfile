# Créer un Dockerfile pour cette application en mode production
# Utilisation d'une image Apache avec PHP
FROM node:20 as build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@10.4.0

RUN npm install

COPY . .

RUN apt-get update && \
    apt-get install -y apache2

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

