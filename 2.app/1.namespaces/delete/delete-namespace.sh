#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"

#Namespace creation
envsubst < ../namespace.yaml | kubectl delete -f -