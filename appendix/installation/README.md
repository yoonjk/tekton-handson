

## Install Tekton of latest version
```bash
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
```
#### Tekton Dashboard's Pod
![tekton installed pods]( /images/install-tekton.png)

## Install Tekton Dashboard
```bash
# https://tekton.dev/docs/dashboard/install/
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/release.yaml
```
#### Tekton Dashboard's Pod
![tekton dashboard pods]( /images/install-tekton-dashboard.png)

# Install nginx-ingress
```bash
kubectl create ns ingress-nginx  
helm install nginx-ingress nginx-stable/nginx-ingress --set rbac.create=true --namespace ingress-nginx
```

## Install Tekton Trigger
```bash
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
```

#### Trigger's Pods
![tekton trigger pods]( /images/install-trigger.png)

#### Interceptor's Pod
![tekton interceptor pods]( /images/install-interceptor.png)

