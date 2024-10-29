#!/bin/bash
OBJECT="$1"
kubectl get $OBJECT  | awk -v obj=$OBJECT '!/.*NAME/ {print " kubectl delete  " obj  "  "  $1}' |sh
