#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export SECRETS_NAME="mysql-secrets"
export MYSQL_PASSWORD="test@1234"

#Secrets creation
envsubst < ./mysql-secrets.yaml | kubectl apply -f -