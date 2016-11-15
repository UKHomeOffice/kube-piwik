#!/bin/bash

export KUBE_NAMESPACE=${KUBE_NAMESPACE:-${DRONE_DEPLOY_TO}}
export KUBE_SERVER=${KUBE_SERVER_DEV}
export KUBE_TOKEN=${KUBE_TOKEN_DEV}

cd kube
kd --insecure-skip-tls-verify \
   --file deployment.yaml \
   --file service.yaml \
   --file ingress.yaml
