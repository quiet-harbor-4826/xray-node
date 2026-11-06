#!/bin/sh
set -e
cd /var/www
PORT="${PORT:-8080}"
sed -i "s/\"port\": 8080/\"port\": $PORT/" /var/www/config.json
exec /var/www/bin/xray run -c /var/www/config.json
