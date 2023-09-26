#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"

#Namespace creation
envsubst < ../namespace.yaml | kubectl delete -f -