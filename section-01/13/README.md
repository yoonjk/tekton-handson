
kubectl apply -f goodbye.yaml

kubectl apply -f goodbye-run.yaml 

taskrun.tekton.dev/goodbye-run created

kubectl logs --selector=tekton.dev/taskRun=goodbye-run

tkn taskrun logs goodbye-run

