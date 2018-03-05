#!/usr/bin/env bash

cd ../../..

for port in {8000..8100}; do
    python -m SimpleHTTPServer $port &
    pid=$!
    sleep 0.5
    if ps -p $pid &>/dev/null; then
        url="http://localhost:${port}"
        echo "Serving at ${url}..."
        open $url
        wait $pid
    fi
done
