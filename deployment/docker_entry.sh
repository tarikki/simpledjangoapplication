#!/bin/sh

echo "starting supervisord"
supervisord -n -c /app/deployment/supervisor.ini