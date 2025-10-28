# Gunakan image resmi n8n
FROM n8nio/n8n:latest

# Set timezone dan port custom
ENV GENERIC_TIMEZONE=Asia/Jakarta
ENV TZ=Asia/Jakarta
ENV N8N_PORT=1234
ENV N8N_HOST=0.0.0.0
ENV N8N_DISABLE_EXTERNAL_MODULES=false
ENV N8N_EXTERNAL_MODULES_ALLOW_LIST=axios,form-data

# Copy .env file (optional)
COPY .env /home/node/.n8n/.env

# Expose port custom
EXPOSE 1234

# Jalankan n8n
CMD ["n8n", "start"]
