#!/bin/bash

#Environment setup
export NAMESPACE_NAME="common-databases"
export PV_NAME="mysql-pv-volume"

kubectl -n $NAMESPACE_NAME describe pv $PV_NAME