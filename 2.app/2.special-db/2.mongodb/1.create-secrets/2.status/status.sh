#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"

kubectl get secrets -n $NAMESPACE_NAME