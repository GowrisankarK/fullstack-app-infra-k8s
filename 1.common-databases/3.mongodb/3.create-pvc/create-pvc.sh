#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export PV_NAME="mongodb-pv-volume"
export PV_CLAIM_NAME="mongodb-pv-volume-claim"
export STORAGE_SPACE=2Gi

#PV creation
envsubst < ./create-presistent-volume-claim.yaml | kubectl apply -f -