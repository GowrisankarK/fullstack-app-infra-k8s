#!/bin/bash

#Environment setup
export NAMESPACE_NAME="gateway-lb"

#Create cert-manager kubernetes namespace
kubectl create namespace cert-manager

# Install the Helm CLI
# curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# Remove the jetstack Helm repository
helm repo remove repo jetstack

# Add the jetstack Helm repository
helm repo add jetstack https://charts.jetstack.io

# update helm repos
helm repo update

# Install cert-manager using the Helm chart{v1.6.3 is compatible to kubernetes v1.25}
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v1.6.3

# Upgrade cert-manager using the Helm chart command
# helm upgrade cert-manager jetstack/cert-manager --namespace cert-manager --version v1.7.1

# Unistall cert-manager
# helm uninstall cert-manager jetstack/cert-manager --namespace cert-manager

#alternative using manifest yaml
#kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.9.1/cert-manager.yaml