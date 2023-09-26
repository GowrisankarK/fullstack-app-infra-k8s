#!/bin/bash

#Environment setup
export DEPLOYED_APP_NAME="frontend-app"
export NAMESPACE_NAME="your_namespace_name"
export FRONTEND_SERVICE_PORT=3000
export NODEPORT_FRONTEND_SERVICE_NAME="testing-frontend-nodeport"
#The default nodeport ranger b/w 30000-32767
export NODEPORT_NUMBER=30253

#frontend services creation(nodeport deployment)
envsubst < ./frontend-service.yaml | kubectl apply -f -