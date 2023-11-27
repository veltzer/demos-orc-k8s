#!/bin/sh
docker run -d -p 8000:8000 flask_app
# everything is running, take a look
docker ps
