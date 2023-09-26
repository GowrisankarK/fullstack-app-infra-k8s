#!/bin/bash

#Environment setup
export NAMESPACE_NAME="your_namespace_name"
export PV_NAME="mysql-pv-volume-v1"

kubectl -n $NAMESPACE_NAME delete pv $PV_NAME