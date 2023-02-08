
EXTERNAL_IP=$(kubectl get nodes -o jsonpath='{..metadata.labels.ibm-cloud\.kubernetes\.io\/external-ip}')

NODE_PORT=$(kubectl get svc ingress-nginx-controller -n ingress-nginx -o jsonpath='{.spec.ports[0].nodePort}')
INGRESS_HOST=$(echo "http://tekton-dashboard.$EXTERNAL_IP.nip.io")
URL="http://tekton-dashboard.$EXTERNAL_IP.nip.io:$NODE_PORT"

echo $URL