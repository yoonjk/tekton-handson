
kubectl apply -f print-date-task.yaml

kubectl apply -f print-date-task-run.yaml

kubectl get taskrun print-date-task-run

tkn taskrun logs -f print-date-task-run

kubectl apply -f task-with-results.yaml

kubectl apply -f example-pipeline.yaml


kubectl apply -f pipeline-run.yaml

tkn pipelinerun logs -f --last

