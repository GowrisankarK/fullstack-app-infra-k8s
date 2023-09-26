#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"

#Get all secrets status
kubectl get secrets -n $NAMESPACE_NAME