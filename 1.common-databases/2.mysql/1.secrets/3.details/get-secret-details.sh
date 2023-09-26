#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export SECRETS_NAME="mysql-secrets"

#Get all secrets details
kubectl describe secret $SECRET_NAME -n $NAMESPACE_NAME
#kubectl get secret $SECRET_NAME -n $NAMESPACE_NAME -o jsonpath='{.data}'