#!/bin/bash
#for pod in $(kubectl get pods -o go-template --template '{{range.items}}{{.metadata.name}}{{"\n"}}{{end}}')
#do
#	kubectl logs $pod > $kubernates-cluster-information-output.txt
#done

kubectl cluster-info > kubernetes-cluster-information-output.txt
kubectl get pods -A -o wide >> kubernetes-cluster-information-output.txt