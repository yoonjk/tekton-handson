
kubectl apply -f hello-world.yaml

kubectl apply -f hello-world-run.yaml 

kubectl get taskrun hello-world-run

kubectl logs --selector=tekton.dev/taskRun=hello-task-run

tkn taskrun logs hello-world-run