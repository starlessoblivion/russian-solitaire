#!/bin/bash
cd "$(dirname "$0")"
echo "Starting server at http://0.0.0.0:8000"
echo "Access from phone browser: http://localhost:8000"
python3 -m http.server 8000 --bind 0.0.0.0
