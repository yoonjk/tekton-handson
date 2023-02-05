notified.notifications.argoproj.io: '{"on-sync-succeeded:[0].zxM90Et6k4Elb1-fHdjtDJq0xR0:slack:my_channel":1665731931}'

```bash
export EMAIL_USER=<your-username>
export PASSWORD=<your-password>
kubectl apply -n argocd -f - << EOF
apiVersion: v1
kind: Secret
metadata:
  name: argocd-notifications-secret
stringData:
  email-username: $EMAIL_USER
  email-password: $PASSWORD
type: Opaque
EOF
```

## webhook

kubectl patch app <my-app> -n argocd -p '{"metadata": {"annotations": {"recipients.argocd-notifications.argoproj.io":"webhokk:dingtalk"}}}' --type merge


