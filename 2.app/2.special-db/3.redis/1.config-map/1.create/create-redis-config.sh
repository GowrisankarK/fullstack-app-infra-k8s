#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export REDIS_CONFIG_NAME="redis-config"

#PV creation
envsubst < ./redis-configmap.yaml | kubectl apply -f -