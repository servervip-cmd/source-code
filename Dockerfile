FROM node:20-alpine

WORKDIR /app

RUN npm install -g opencode

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 3000

CMD ["/start.sh"]
