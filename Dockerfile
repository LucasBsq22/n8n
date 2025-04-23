FROM n8nio/n8n

# Optionnel : active l’authentification de base
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# (Optionnel) Change l’emplacement des données si besoin :
# ENV N8N_USER_FOLDER=/data

EXPOSE 5678

# Obligatoire : assure que n8n se lance
CMD ["n8n"]
