FROM node:20

WORKDIR /app

RUN npm install -g opencode-ai

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 3000

CMD ["/start.sh"]
