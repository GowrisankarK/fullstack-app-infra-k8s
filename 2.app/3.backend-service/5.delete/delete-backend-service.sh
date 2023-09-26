#!/bin/bash

#Environment setup
export SERVICE_NAME="testing"
export NAMESPACE_NAME="your_namespace_name"
export BACKEND_SERVICE_IMAGE="username/node-app"
export BACKEND_SERVICE_PORT=8080
export REPLICA_SET_COUNT=1
export LIVENESS_PROBE_PATH="/health"
export READINESS_PROBE_PATH="/readiness"

#backend services deletion(Revoke deployment)
envsubst < ../backend-service.yaml | kubectl delete -f -