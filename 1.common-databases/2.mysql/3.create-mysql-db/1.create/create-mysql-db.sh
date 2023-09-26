#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export MYSQL_DEPLOYMENT_NAME="mysql-common-db"
export MYSQL_SERVICE_NAME="mysql-common-db-network-service"
export SECRETS_NAME="mysql-secrets"
export PV_CLAIM_NAME="mysql-pv-volume-claim"

#Secrets creation
envsubst < ./mysql-db.yaml | kubectl apply -f -