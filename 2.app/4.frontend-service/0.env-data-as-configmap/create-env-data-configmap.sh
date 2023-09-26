#!/bin/bash

#Environment setup
export CONFIGMAP_NAME="frontend-env-configmap"
export NAMESPACE_NAME="your_namespace_name"
export BACKEND_URL="https://stage-backend.your_domain.io/api/v1/"

#frontend env data configmap creation
envsubst < ./env-data-configmap.yaml | kubectl apply -f -