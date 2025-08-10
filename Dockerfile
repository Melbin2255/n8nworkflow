# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Set the host to match Render deployment
ENV N8N_HOST=n8nworkflowzaarz.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8nworkflowzaarz.onrender.com/

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
