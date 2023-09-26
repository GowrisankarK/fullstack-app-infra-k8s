#!/bin/bash

#Environment setup
export SERVICE_NAME="backend-app"
export NAMESPACE_NAME="your_namespace_name"
export BACKEND_SERVICE_IMAGE="your-docker-image"
export BACKEND_SERVICE_PORT=8080
export REPLICA_SET_COUNT=1
export LIVENESS_PROBE_PATH="/health"
export READINESS_PROBE_PATH="/readiness"
export MYSQL_CONFIGMAP_NAME=mysql-config

#backend services creation(deployment)
envsubst < ../backend-service.yaml | kubectl apply -f -