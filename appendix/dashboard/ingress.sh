EXTERNAL_IP=$(kubectl get nodes -o jsonpath='{..metadata.labels.ibm-cloud\.kubernetes\.io\/external-ip}')

NODE_PORT=$(kubectl get svc ingress-nginx-controller -n ingress-nginx -o jsonpath='{.spec.ports[0].nodePort}')
INGRESS_HOST=$(echo "http://tekton-dashboard.$EXTERNAL_IP.nip.io")

kubectl apply -f - <<EOF
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: tekton-dashboard
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
  namespace: tekton-pipelines
spec:
  rules:
    - host: $INGRESS_HOST
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: tekton-dashboard
                port:
                  number: 9097