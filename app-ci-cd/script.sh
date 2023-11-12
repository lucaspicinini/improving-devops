#!/bin/bash

kubectl apply -f ./deployment.yml --record
kubectl apply -f ./mysql-deployment.yml --record