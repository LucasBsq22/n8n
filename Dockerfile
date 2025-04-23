# Utilise l'image officielle de n8n
FROM n8nio/n8n:latest

# Recommande d'appliquer les bonnes permissions au fichier de config
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Active l’authentification par login/mot de passe
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Rend l'URL cohérente sur Render
ENV WEBHOOK_TUNNEL_URL=https://n8n.onrender.com
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Expose le bon port
EXPOSE 5678

# Utilise l’entrée par défaut de l’image officielle
ENTRYPOINT ["tini", "--", "n8n"]
