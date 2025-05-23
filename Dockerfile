# ==== Dockerfile =====
FROM n8nio/n8n:1.93.0

# если нужны пакеты — ставь через apt, а не apk
RUN apt-get update && \
    apt-get install -y graphicsmagick tzdata && \
    rm -rf /var/lib/apt/lists/*

# доп. npm-плагины для n8n
USER root     
# окружение / порт оставляем как было
ENV N8N_USER_ID=root
EXPOSE ${PORT}

CMD ["n8n", "start"]
