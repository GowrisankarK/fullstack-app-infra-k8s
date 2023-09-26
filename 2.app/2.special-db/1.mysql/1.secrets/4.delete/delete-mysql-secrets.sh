#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export SECRETS_NAME="mysql-secrets"

kubectl delete secret $SECRETS_NAME -n $NAMESPACE_NAME