#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export PV_NAME="mongodb-pv-volume"
export PV_CLAIM_NAME="mongodb-pv-volume-claim"
export STORAGE_SPACE=5Gi
export STORAGECLASS_NAME="mongodb-storage-class"

#PV creation
envsubst < ./create-presistent-volume.yaml | kubectl apply -f -