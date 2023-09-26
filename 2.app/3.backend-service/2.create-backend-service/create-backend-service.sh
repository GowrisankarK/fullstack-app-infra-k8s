#!/bin/bash

#Environment setup
export BACKEND_DEPLOYMENT_NAME="backend-app"
export BACKEND_SERVICE_NAME="backend-app-svc"
export NAMESPACE_NAME="your_namespace_name"
export CONTAINER_PORT=8080

#backend services creation
envsubst < ./create-backend-service.yaml | kubectl apply -f -