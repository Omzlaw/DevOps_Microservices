#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=22559900/machine-learning-microservice:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy machine-learning-microservice-kube --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods 
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/machine-learning-microservice-kube-5b9f8587b-knbt4 --address 0.0.0.0 8000:80
