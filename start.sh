#!/bin/sh

PORT=${PORT:-4096}
HOST=${HOST:-0.0.0.0}

opencode serve --port $PORT --hostname $HOST &

sleep 8

(
  while true; do
    curl -s -o /dev/null http://localhost:$PORT
    echo "Ping $(date)"
    sleep 300
  done
) &

wait
