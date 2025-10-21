# Étape 1 : image de base
FROM python:3.10-slim

# Étape 2 : dossier de travail
WORKDIR /app

# Étape 3 : copie des fichiers
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Étape 4 : commande de lancement
CMD ["python", "main.py"]
