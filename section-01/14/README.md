kubectl  apply -f hello-goodbye-pipeline.yaml


kubectl apply -f hello-goodbye- pipeline-run.yaml

kubectl get pipelinerun hello-goodbye-pipeline-run

kubectl delete -f hello-goodbye-pipeline.yaml

kubectl delete -f hello-goodbye-pipeline-run.yaml

kubectl apply -f hello-goodbye-pipeline-run.yaml

tkn  pipelinerun logs hello-goodbye-pipeline-run