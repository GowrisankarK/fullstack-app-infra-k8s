#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export MYSQL_DEPLOYMENT_NAME="mysql-common-db"
export MYSQL_SERVICE_NAME="mysql-common-db-network-service"

#Get status of the deployment
echo "<<<Deployment Lists>>>"
kubectl get deployments -n $NAMESPACE_NAME
echo "<<<Deployment status>>>"
kubectl -n ${NAMESPACE_NAME} describe deployments ${MYSQL_DEPLOYMENT_NAME}
echo "<<<Service status>>>"
kubectl -n ${NAMESPACE_NAME} describe svc ${MYSQL_SERVICE_NAME}