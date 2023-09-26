#!/bin/bash

#Environment setup
export DEPLOYED_APP_NAME="testing"
export NAMESPACE_NAME="your_namespace_name"
export BACKEND_SERVICE_PORT=8080
export NODEPORT_BACKEND_SERVICE_NAME="testing-nodeport"
#The default nodeport ranger b/w 30000-32767
export NODEPORT_NUMBER=30253

#backend services creation(deployment)
envsubst < ./backend-service.yaml | kubectl apply -f -