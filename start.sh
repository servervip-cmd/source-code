#!/bin/sh

PORT=${PORT:-3000}
HOST=${HOST:-0.0.0.0}

opencode serve --host $HOST --port $PORT &
SERVER_PID=$!

sleep 5

while true; do
    if curl -s -o /dev/null -w "%{http_code}" http://localhost:$PORT > /dev/null 2>&1; then
        echo "Ping $(date)"
    fi
    sleep 300
done &

wait $SERVER_PID
