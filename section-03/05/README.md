

## buildah
```bash
tkn hub info task buildah

tkn hub install task buildah --version 0.5
```

## expose argocd-server by NodePort.
k patch -n argocd svc/argocd-server -p '{"spec": {"type": "NodePort"}}'


## Add user to Argo CD
kubectl patch cm argocd-cm -n argocd --type merge -p '{"data": {"accounts.user01": "apiKey,login"}}'

