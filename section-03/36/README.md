# tekton pipeline on openshift
## Install bitbucket container
```bash
# Create volumeMount
mkdir -p data/bitbucket

# bitbucket container
docker run -v ./data/bitbucket:/var/atlassian/application-data/bitbucket --name="bitbucket" -d -p 7990:7990 -p 7999:7999 atlassian/bitbucket
```

## Assign image-puller role to default serviceaccount
```bash
oc policy add-role-to-user system:image-puller system:serviceaccount:education-dev:default -n education
clusterrole.rbac.authorization.k8s.io/system:image-puller added: "system:serviceaccount:education-dev:default"
```

## my-registry-secret
```bash
kubectl create secret docker-registry my-registry-secret
--docker-server=DOCKER_REGISTRY_SERVER
--docker-username=DOCKER_USER
--docker-password=DOCKER_PASSWORD
--docker-email=DOCKER_EMAIL
```

## Register credentials
```bash
cat <<EOF | kubectl apply -f -
---
apiVersion: v1
kind: Secret
metadata:
  name: regcred
data:
  .dockerconfigjson: $(echo "{\"auths\": {\"https://index.docker.io/v1/\": {\"auth\": \"$(echo "janedoe:xxxxxxxxxxx" | base64)\"}}}" | base64)
type: kubernetes.io/dockerconfigjson
EOF
```

## Edit sa.yaml and add the ImagePullSecret after Secrets
```bash
kubectl create secret docker-registry myregistrykey --docker-server=DOCKER_REGISTRY_SERVER --docker-username=DOCKER_USER --docker-password=DOCKER_PASSWORD --docker-email=DOCKER_EMAIL
```

## Then add the newly created key to your Kubernetes service account.
```bash
kubectl get serviceaccounts default -o yaml > ./sa.yaml
```

## Edit sa.yaml and add the ImagePullSecret after Secrets
```bash
imagePullSecrets:
- name: myregistrykey
```

## Update the service account

```bash
kubectl replace serviceaccount default -f ./sa.yaml
```

##
```bash
kubectl create secret generic myregistry --from-file=.dockerconfigjson=$HOME/.docker/config.json
```

## go the easy way, do not forget to define --type and add it to proper namespace
```bash
kubectl create secret generic YOURS-SECRET-NAME \
--from-file=.dockerconfigjson=$HOME/.docker/config.json \
--type=kubernetes.io/dockerconfigjson
```

## For centos7, the docker config file is under /root/.dockercfg
```bash
echo $(cat /root/.dockercfg) | base64 -w 0
```

#### Copy and paste result to secret YAML based on the old format:
```bash
apiVersion:  v1
kind: Secret
metadata:
  name: docker-secret
  type: kubernetes.io/dockercfg
data:
  .dockercfg: <YOUR_BASE64_JSON_HERE> 
```

