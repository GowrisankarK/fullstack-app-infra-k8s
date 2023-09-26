#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export REDIS_NAME="test-redis"
export REDIS_CONFIG_NAME="redis-config"

#PV creation
envsubst < ./deploy-redis.yaml | kubectl apply -f -