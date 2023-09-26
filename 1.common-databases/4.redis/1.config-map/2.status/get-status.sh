#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"

kubectl get configmap -n $NAMESPACE_NAME