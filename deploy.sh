#!/bin/bash

# Script de déploiement pour la branche feature/salary-table-dashboard
# Ce script automatise l'installation, le build et la préparation des fichiers statiques.

# Couleurs pour la sortie
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Début du processus de déploiement ===${NC}"

# 1. Vérification de la branche actuelle
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
TARGET_BRANCH="feature/salary-table-dashboard"

if [ "$CURRENT_BRANCH" != "$TARGET_BRANCH" ]; then
    echo -e "${BLUE}Passage sur la branche $TARGET_BRANCH...${NC}"
    git checkout $TARGET_BRANCH
fi

# 2. Installation des dépendances
echo -e "${BLUE}Installation des dépendances avec npm...${NC}"
npm install

# 3. Exécution du build
echo -e "${BLUE}Lancement de la compilation (build)...${NC}"
npm run build

# 4. Vérification du dossier de sortie
if [ -d "dist" ]; then
    echo -e "${GREEN}Build terminé avec succès dans le dossier /dist.${NC}"
else
    echo -e "${BLUE}Erreur: Le dossier /dist n'a pas été généré.${NC}"
    exit 1
fi

# 5. Instructions finales (exemple pour un serveur statique)
echo -e "${GREEN}=== Déploiement prêt ===${NC}"
echo -e "Les fichiers de production sont disponibles dans le dossier ${BLUE}dist/${NC}."
echo -e "Vous pouvez maintenant les copier sur votre serveur web (Nginx, Apache, S3, etc.)."
echo -e "Exemple : scp -r dist/* user@votre-serveur:/var/www/html/"
