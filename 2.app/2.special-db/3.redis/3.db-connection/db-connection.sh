#!/bin/bash

kubectl -n common-databases exec -it test-redis -- redis-cli

#execute PING