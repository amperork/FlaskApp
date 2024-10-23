# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt (assurez-vous que vous avez ce fichier pour les dépendances Flask)
COPY requirements.txt .

# Installer les dépendances du projet
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le contenu du projet dans le répertoire de travail du conteneur
COPY . .

# Exposer le port sur lequel l'application Flask fonctionne (5000)
EXPOSE 5001

# Spécifier la commande pour démarrer l'application Flask
CMD ["python3", "app.py"]
