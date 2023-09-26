#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export ROLE_NAME="admin_iam_role"

#Role creation
envsubst < ./1.create-k8s-role.yaml | kubectl apply -f -