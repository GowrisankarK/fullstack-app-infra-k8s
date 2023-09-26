#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export MYSQL_DEPLOYMENT_NAME="mysql-common-db"
export MYSQL_SERVICE_NAME="mysql-common-db-network-service"

#Delete MySQL DB
kubectl -n $NAMESPACE_NAME delete deployment $MYSQL_DEPLOYMENT_NAME
kubectl -n $NAMESPACE_NAME delete svc $MYSQL_SERVICE_NAME