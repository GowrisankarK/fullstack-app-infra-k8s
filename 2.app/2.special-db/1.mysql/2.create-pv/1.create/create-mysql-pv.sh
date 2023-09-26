#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export PV_NAME="mysql-pv-volume-v1"
export PV_CLAIM_NAME="mysql-pv-volume-claim-v1"
export STORAGE_SPACE=10Gi

#Secrets creation
envsubst < ./mysql-presistent-volume.yaml | kubectl apply -f -