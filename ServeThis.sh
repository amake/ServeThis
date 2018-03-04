#!/usr/bin/env bash

cd ../../..

for port in {8000..8100}; do
    python -m SimpleHTTPServer $port
done
