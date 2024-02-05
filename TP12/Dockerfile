# Image de base Debian
FROM debian:11

# Créez le répertoire de travail
WORKDIR /app

# Installation des paquets nécessaires
RUN apt-get update && \
    apt-get install -y build-essential python3 python3-pip

# Copiez les fichiers requis (le script Python et le fichier requirements.txt)
COPY app.py .

# Copiez le répertoire templates (qui contient newuser.html) dans le conteneur
COPY templates /app/templates

#COPY requirements.txt .

# Installez les dépendances
#RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install Flask

# Exposez le port sur lequel Flask va écouter
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["flask", "run", "--host=0.0.0.0"]