#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export SERVICE_NAME="frontend-app-svc"
export FRONTEND_DEPLOYMENT_NAME="frontend-deployment"
export CONTAINER_PORT=8081
export FRONTEND_ENV_CONFIG_MAP_NAME="frontend-env-configmap"

#backend services creation(service)
envsubst < ./1.create-frontend-service.yaml | kubectl apply -f -