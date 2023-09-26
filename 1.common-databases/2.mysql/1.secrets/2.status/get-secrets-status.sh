#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"

#Get all secrets status
kubectl get secrets -n $NAMESPACE_NAME