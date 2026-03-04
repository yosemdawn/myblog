#!/bin/bash
cd /var/www/html

# Load environment variables
export $(cat .env | grep -v '^#' | xargs)

# Start the server
PORT=4321 HOST=127.0.0.1 node dist/server/entry.mjs
