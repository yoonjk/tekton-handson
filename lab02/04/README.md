
## docker-registry
kubectl create secret docker-registry dockerhub-user00-credentials \
--docker-server=https://index.docker.io/v1/ \
--docker-username=user1234 \
--docker-password=passwd \
--docker-email=test@gmail.com

kubectl create secret docker-registry docker-registry \
--docker-server=https://index.docker.io/v1/ \
--docker-username=user00 \
--docker-password=pass1234\
--docker-email=test@gmail.com

## Create git and image resources
kubectl apply -f git-resource.yaml 
kubectl apply -f image-resource.yaml

## Craete Task build and push image.
kubectl apply -f nodejs-hello.yaml

## Create TaskRun execute task.
kubectl apply -f nodejs-hello-run.yaml