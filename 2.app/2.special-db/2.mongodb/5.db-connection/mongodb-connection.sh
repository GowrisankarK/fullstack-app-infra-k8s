#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export MONGODB_DEPLOYMENT_NAME="test"
export MONGODB_SERVICE_NAME="mongodb-nodeport-service"

export POD_NAME=$(kubectl get pods -l app=$MONGODB_DEPLOYMENT_NAME -o jsonpath="{.items[0].metadata.name}" -n $NAMESPACE_NAME)

kubectl -n $NAMESPACE_NAME exec --stdin --tty $POD_NAME -- /bin/bash

#execute command: mongosh --host mongodb-nodeport-service --port 27017 -u admin -p test@1234