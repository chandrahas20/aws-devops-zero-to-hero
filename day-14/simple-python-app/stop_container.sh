#!/bin/bash
set -e

# Stop the running container (if any)
containerId=`docker ps | aws -F " " '{print $1}'`
docker rm -f $containerId
