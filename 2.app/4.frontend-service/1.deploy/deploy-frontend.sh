#!/bin/bash

#Environment setup
export SERVICE_NAME="frontend-deployment"
export NAMESPACE_NAME="your_namespace_name"
export FRONTEND_SERVICE_IMAGE="your-docker-image"
export FRONTEND_CONTAINER_PORT=8081
export FRONTEND_HOST_PORT=80
export REPLICA_SET_COUNT=1
export FRONTEND_ENV_CONFIG_MAP_NAME="frontend-env-configmap"

#frontend services creation(deployment)
envsubst < ../frontend-service.yaml | kubectl apply -f -