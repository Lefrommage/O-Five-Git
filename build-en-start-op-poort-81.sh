#!/bin/bash

# Stop en verwijder oude container (als die er is)
docker stop demo-site-container 2>/dev/null
docker rm demo-site-container 2>/dev/null

# Bouw de image
docker build -t demo-site-image .

# Start de container op poort 81
docker run -d -p 81:80 --name demo-site-container demo-site-image

echo "De site draait op http://localhost:81"
