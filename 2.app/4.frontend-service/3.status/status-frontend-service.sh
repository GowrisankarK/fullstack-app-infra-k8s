#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export SERVICE_NAME="testing"

#Deplyment status
kubectl -n ${NAMESPACE_NAME} describe deployments ${SERVICE_NAME}