# Créer un Dockerfile pour cette application en mode production
# Utilisation d'une image Apache avec PHP
FROM php:apache

# Définition du répertoire de travail
WORKDIR /var/www/html

# Copie des fichiers de l'application serveur dans le conteneur
COPY . .

# On expose le port 80 (par défaut pour Apache)
EXPOSE 80

# Commande pour démarrer le serveur Apache
CMD ["apache2-foreground"]

