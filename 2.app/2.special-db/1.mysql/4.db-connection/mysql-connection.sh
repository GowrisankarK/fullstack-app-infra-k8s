#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export MYSQL_DEPLOYMENT_NAME="mysql-your_namespace_name-db"
export MYSQL_SERVICE_NAME="mysql-your_namespace_name-db-network-service"

export POD_NAME=$(kubectl get pods -l app=$MYSQL_DEPLOYMENT_NAME -o jsonpath="{.items[0].metadata.name}" -n $NAMESPACE_NAME)
kubectl -n $NAMESPACE_NAME exec --stdin --tty $POD_NAME -- /bin/bash

#give mysql -p and provide the db password and create a database
# kubectl -n your_namespace_name exec --stdin --tty mysql-your_namespace_name-db-55dc64c97b-mb2ts -- /bin/bash

