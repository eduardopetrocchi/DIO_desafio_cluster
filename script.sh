#!/bin/bash

echo "Criando imagens: "
docker build -t eduardopetrocchi/projeto-backend:1.0 backend/.
docker build -t eduardopetrocchi/projeto-database:1.0 database/.

echo "Realizando o push: "
subindo as imagens...
docker push eduardopetrocchi/projeto-backend:1.0
docker push eduardopetrocchi/projeto-database:1.0

echo "Criando serviços no cluester kubernetes: "
kubectl apply -f ./services.yaml

echo "Criando os deploys: "
kubectl apply -f ./deployment.yaml



