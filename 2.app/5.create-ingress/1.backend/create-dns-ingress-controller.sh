#!/bin/bash

#https://traefik.io/blog/secure-web-applications-with-traefik-proxy-cert-manager-and-lets-encrypt/

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export INGRESS_NAME="backend-app-ingress"
export SERVICE_NAME="backend-app-svc"

#backend services creation(service)
envsubst < ./create-dns-ingress-controller.yaml | kubectl apply -f -