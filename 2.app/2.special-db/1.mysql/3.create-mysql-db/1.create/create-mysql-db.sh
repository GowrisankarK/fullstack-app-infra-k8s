#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export MYSQL_DEPLOYMENT_NAME="mysql-your_namespace_name-db"
export MYSQL_SERVICE_NAME="mysql-your_namespace_name-db-network-service"
export SECRETS_NAME="mysql-secrets"
export PV_CLAIM_NAME="mysql-pv-volume-claim-v1"

#Secrets creation
envsubst < ./mysql-db.yaml | kubectl apply -f -