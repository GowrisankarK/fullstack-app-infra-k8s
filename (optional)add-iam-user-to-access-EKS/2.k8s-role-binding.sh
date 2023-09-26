#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export ROLE_BINDING_NAME="admin_iam_role_binding"
export IAM_ARN="iam_user_arn"
export ROLE_REF_NAME="admin_iam_role"

#Role creation
envsubst < ./2.k8s-role-binding.yaml | kubectl apply -f -