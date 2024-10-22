
## docker-registry
kubectl create secret docker-registry docker-credentials \
--docker-server=https://index.docker.io/v1/ \
--docker-username=user1234 \
--docker-password=passwd \
--docker-email=test@gmail.com



## Download tasks from tekton hub
tkn hub install task git-clone
tkn hub install task kaniko
tkn hub install task kubernetes-actions --version 0.2