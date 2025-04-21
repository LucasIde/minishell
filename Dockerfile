FROM debian:bullseye

# 1. Installer les dépendances
RUN apt-get update && apt-get install -y \
    build-essential \
    libreadline-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. Créer un dossier pour ton code
WORKDIR /app

# 3. Copier tout ton projet dedans
COPY . .

# 4. Compiler le projet avec Make
RUN make
