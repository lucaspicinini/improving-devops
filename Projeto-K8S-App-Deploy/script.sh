#!/bin/bash

echo "Criando as imagens..."

docker build -t gordelando/projeto-backend:1.0 backend/.
docker build -t gordelando/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."

docker push gordelando/projeto-backend:1.0
docker push gordelando/projeto-database:1.0

echo "Criando serviço no cluster Kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yml

