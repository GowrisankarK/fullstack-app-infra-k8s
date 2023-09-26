#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export REDIS_NAME="test-redis"

kubectl delete pod $REDIS_NAME -n $NAMESPACE_NAME