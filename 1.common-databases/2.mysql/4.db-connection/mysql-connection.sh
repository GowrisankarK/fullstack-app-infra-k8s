#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export MYSQL_DEPLOYMENT_NAME="mysql-common-db"
export MYSQL_SERVICE_NAME="mysql-common-db-network-service"

export POD_NAME=$(kubectl get pods -l app=$MYSQL_DEPLOYMENT_NAME -o jsonpath="{.items[0].metadata.name}" -n $NAMESPACE_NAME)
kubectl -n $NAMESPACE_NAME exec --stdin --tty $POD_NAME -- /bin/bash

#give mysql -p and provide the db password and create a database