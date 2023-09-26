#!/bin/bash

#Environment setup
export NAMESPACE_NAME="testing"

kubectl get events --sort-by=.metadata.creationTimestamp -n ${NAMESPACE_NAME}