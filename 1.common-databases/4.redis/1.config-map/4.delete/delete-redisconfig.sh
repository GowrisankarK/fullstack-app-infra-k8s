#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export REDIS_CONFIG_NAME="redis-config"

kubectl -n $NAMESPACE_NAME delete configmap $REDIS_CONFIG_NAME