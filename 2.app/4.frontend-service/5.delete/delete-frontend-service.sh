#!/bin/bash

#Environment setup
export SERVICE_NAME="frontend-app-svc"
export NAMESPACE_NAME="your_namespace_name"
export FRONTEND_SERVICE_IMAGE="your-docker-image"
export FRONTEND_CONTAINER_PORT=3000
export FRONTEND_HOST_PORT=80
export REPLICA_SET_COUNT=1

#frontend services deletion(Revoke deployment)
envsubst < ../frontend-service.yaml | kubectl delete -f -