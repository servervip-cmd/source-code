#!/bin/sh

PORT=${PORT:-4096}
HOST=${HOST:-0.0.0.0}

opencode serve --port $PORT --hostname $HOST &

sleep 5

while true; do
    if curl -s -o /dev/null -w "%{http_code}" http://localhost:$PORT > /dev/null 2>&1; then
        echo "Ping $(date)"
    fi
    sleep 300
done &

wait
