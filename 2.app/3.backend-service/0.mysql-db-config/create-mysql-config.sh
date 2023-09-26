#!/bin/bash

#Environment setup
export CONFIGMAP_NAME=mysql-config
export NAMESPACE_NAME=your_namespace_name
export MYSQL_SVC_NAME=mysql-your_namespace_name-db-network-service.your_namespace_name.svc.cluster.local
export MYSQL_USERNAME=root
export MYSQL_PASSWORD=4w350m3

#mysql sb config creation
envsubst < ./mysql-config.yaml | kubectl apply -f -