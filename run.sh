#!/bin/bash
# Make it runnable!!!  chmod +x run.sh
echo “Running Image”
docker run -d --name ark-host-1 ark-dockerized
