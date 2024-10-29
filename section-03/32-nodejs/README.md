tkn hub install task git-clone

kubectl get task git-clone

kubectl get task git-clone -o yaml

kubectl apply -f build-and-push-kaniko.yaml 

kubectl get task build-and-push-kaniko

kubectl get task build-and-push-kaniko -o yaml

tkn hub install task kubernetes-actions

kubectl get task kubernetes-actions

kubectl get task build-and-push-kaniko -o yaml

 tkn pipelinerun list 

 kubectl create -f kaniko-pipeline-run.yaml 

 kubectl get pods

 kubectl get pr 

tkn pipelinerun list 

tkn pipelinerun logs -f  --last

kubectl get pods -l app=nodejs-app

kubectl get task git-clone

kubectl get task git-clone -o yaml

kubectl apply -f build-deploy-pipeline.yaml 

kubectl create -f build-deploy-pipeline-run.yaml 


kubectl get pipelinerun

tkn pipelinerun logs -f --last

tkn pipelinerun logs -f pipelinerun 인스턴스

tkn pipeliinerun logs -f build-deploy-pipeline-run-5q9kx


kubectl apply -f build-maven.yaml

kubectl apply -f build-deploy-pipeline.yaml 

kubectl create -f build-deploy-pipeline-run.yaml

kubectl create -f build-deploy-pipeline-run.yaml 


kubectl get pipelinerun

tkn pipelinerun logs -f --last

tkn pipelinerun logs -f pipelinerun 인스턴스

tkn pipeliinerun logs -f build-deploy-pipeline-run-5q9kx

kubectl create -f build-deploy-pipeline-run.yaml 


tkn pipelinerun list

tkn pipelinerun logs -f 자신이 샐행한 pipelinerun 인스턴스명

tkn hub install task kubernetes-actions 

kubectl get task kubernetes-actions -o yaml 


kubectl create clusterrolebinding tekton-admin --clusterrole cluster-admin --serviceaccount default:default

kubectl create -f build-deploy-pipeline-run.yaml 

tkn pipelinerun list 

tkn pipelinerun logs -f --last


kubectl get pods -l app=sample

tkn taskrun list











