#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export MYSQL_DEPLOYMENT_NAME="mysql-your_namespace_name-db"
export MYSQL_SERVICE_NAME="mysql-your_namespace_name-db-network-service"

#Get status of the deployment
echo "<<<Deployment Lists>>>"
kubectl get deployments -n $NAMESPACE_NAME
echo "<<<Deployment status>>>"
kubectl -n ${NAMESPACE_NAME} describe deployments ${MYSQL_DEPLOYMENT_NAME}
echo "<<<Service status>>>"
kubectl -n ${NAMESPACE_NAME} describe svc ${MYSQL_SERVICE_NAME}