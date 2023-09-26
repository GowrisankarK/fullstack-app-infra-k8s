#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export PV_NAME="mysql-pv-volume"
export PV_CLAIM_NAME="mysql-pv-volume-claim"
export STORAGE_SPACE=5Gi

#Secrets creation
envsubst < ./mysql-presistent-volume.yaml | kubectl apply -f -