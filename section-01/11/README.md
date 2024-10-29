
# minikube 초기화 
```bash
minikube stop
minikube delete
minikube start --memory=8192mb --cpus=4 --force
```

kubectl get pods 

#### tekton 설치 
```bash
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
kubectl get ns
kubectl get pods  -n tekton-pipelines
```



# trigger 설치 
```bash
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml

```

#### tekton dashboard 설치 
```bash
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/release-full.yaml
kubectl port-forward svc/tekton-dashboard -n tekton-pipelines  9097:9097 --address 0.0.0.0

```

#### tekton cli 설치 
```bash
curl -LO https://github.com/tektoncd/cli/releases/download/v0.38.1/tkn_0.38.1_Linux_x86_64.tar.gz
tkn -h
```

