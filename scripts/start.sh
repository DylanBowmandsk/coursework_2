#!/bin/bash
minikube start --vm-driver=virtualbox

kubectl create deployment serverjs --image=dbowma201/serverjs:v1.0

kubectl expose deployment/serverjs --port=8080 --type="NodePort" --name serverjs
