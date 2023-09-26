#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export SECRETS_NAME="mysql-secrets"
export MYSQL_PASSWORD="test@1234"

#Secrets creation
envsubst < ./mysql-secrets.yaml | kubectl apply -f -