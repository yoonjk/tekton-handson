## Create argocd's secret to access, after creating new account.

kubectl create secret -n tekton-pipelines generic argocd-env-secret --from-literal=ARGOCD_AUTH_TOKEN=<token>

## Install maven task from tekton hub.
tkn hub install task maven --version 0.2 
or
custom maven task

## Install builda from tekton hub.
tkn hub install task buildah --version 0.5
