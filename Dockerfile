FROM node:20

WORKDIR /app

RUN npm install -g opencode-ai@latest

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 4096

CMD ["/start.sh"]
