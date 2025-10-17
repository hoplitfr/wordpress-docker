FROM wordpress:latest

# Arguments passés au moment du build
ARG UID=1000
ARG GID=1000

# Aligne l'utilisateur www-data sur ton utilisateur local
RUN usermod -u ${UID} www-data && groupmod -g ${GID} www-data

# On vérifie que tout est bon
RUN echo "www-data UID:GID -> $(id -u www-data):$(id -g www-data)"

# Reviens à /var/www/html comme dossier de travail
WORKDIR /var/www/html
