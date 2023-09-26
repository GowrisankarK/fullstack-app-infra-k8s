#!/bin/bash

#https://devopscube.com/deploy-mongodb-kubernetes/

#Environment setup
export NAMESPACE_NAME="common-databases"
export SECRETS_NAME="mongodb-secrets"
#admin(has to be base64 encoded)
export MONGODB_USER="YWRtaW4="
#"test@1234"(has to be base64 encoded)
export MONGODB_PASSWORD="dGVzdEAxMjM0"

#Secrets creation
envsubst < ./mongodb-secrets.yaml | kubectl apply -f -