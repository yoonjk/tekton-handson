## Create docker credentials
```bash
kubectl create secret docker-registry docker-credentials \
--docker-server=https://index.docker.io/v1/ \
--docker-username=user01 \
--docker-password=pass1234 \
--docker-email=test@gmail.com
```

AUTH=$(kubectl get secret docker-credentials --output="jsonpath={.data.\.dockerconfigjson}")

## Create serviceAccount
```bash
kubectl create sa tekton-pipeline-sa

kubectl create clusterrolebinding tekton-pipeline-admin --clusterrole cluster-admin --serviceaccount default:tekton-pipeline-sa
```