# Créer un Dockerfile pour cette application en mode production
# Utilisez une image de base avec Node.js pour la construction
FROM node:14 as build

# Définition du répertoire de travail
WORKDIR /app

# Installation des dépendances
RUN npm install

# Copie du fichier package.json et du fichier package-lock.json
COPY package*.json ./

# Copie du reste des fichiers de l'application
COPY . .

# Construction de l'application pour la production
RUN npm run build

# Utilisez d'une image Apache pour servir l'application construite
FROM httpd:alpine

# Copie des fichiers construits à partir de la première étape
COPY --from=build /app/build/ /usr/local/apache2/htdocs/

# On expose le port 80 (par défaut pour Apache)
EXPOSE 80

ENV API_BASE_URL http://localhost:3000


#CMD ["httpd", "-D", "FOREGROUND", "-D", "HTTPD_PORT=${APP_API_URL}}"]
CMD ["httpd", "-D", "FOREGROUND", "-D"]
