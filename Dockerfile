# Utilise l'image officielle de n8n
FROM n8nio/n8n:latest

# Recommande d'appliquer les bonnes permissions au fichier de config
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Active l’authentification par login/mot de passe (recommandé)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Change l’URL publique si nécessaire (utile sur Render)
ENV WEBHOOK_TUNNEL_URL=https://n8n.onrender.com
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Ce port est celui exposé par Render (important !)
EXPOSE 5678

# Lance n8n au démarrage du conteneur
CMD ["n8n"]
