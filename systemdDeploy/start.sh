#!/bin/bash

# Activate virtual environment
source /var/www/DeployFastAPI-/venv/bin/activate

# Change to working directory
cd /var/www/DeployFastAPI-

# Start Gunicorn with Uvicorn worker over a Unix socket
exec gunicorn \
  -k uvicorn.workers.UvicornWorker \
  main:app \
  --chdir app \
  --bind unix:/tmp/uvicorn.sock \
  -w 1 \
  --timeout 30 \
  --graceful-timeout 20
