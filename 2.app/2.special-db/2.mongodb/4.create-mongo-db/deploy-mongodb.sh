#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export PV_NAME="mongodb-pv-volume"
export PV_CLAIM_NAME="mongodb-pv-volume-claim"
export MONGODB_NAME="test"
export SECRETS_NAME="mongodb-secrets"
export MONGODB_SERVICE_NAME="mongodb-nodeport-service"

#PV creation
envsubst < ./deploy-mongodb.yaml | kubectl apply -f -