#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export INGRESS_NAME="frontend-app-ingress"
export SERVICE_NAME="frontend-app-svc"

#backend services creation(service)
envsubst < ./create-dns-frontend-ingress.yaml | kubectl apply -f -