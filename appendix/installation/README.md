

## Install Tekton of latest version
```bash
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
```

![tekton installed pods]( /images/install-tekton.png)

## Install Tekton Dashboard
```bash
# https://tekton.dev/docs/dashboard/install/
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/release.yaml
```

![tekton dashboard pods]( /images/install-tekton-dashboard.png)

# Install nginx-ingress
kubectl create ns ingress-nginx
helm install nginx-ingress nginx-stable/nginx-ingress --set rbac.create=true --namespace ingress-nginx

## Install Tekton Trigger
```bash
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
```

#### Install Trigger
![tekton trigger pods]( /images/install-trigger.png)

#### Install Interceptor
![tekton interceptor pods]( /images/install-interceptor.png)

