# Setup Guide

## Prerequisites
- Git
- Docker + Docker Desktop (with Kubernetes enabled) or Minikube/k3s
- kubectl configured to talk to your cluster
- DockerHub account (for image hosting)

## Quick Steps
1. Clone the repo
2. Build the Docker image
3. Push the image to DockerHub
4. Update dep.yaml if you use a different image name or tag
5. Apply dep.yaml to your Kubernetes cluster

## Notes
- If using Minikube, use `minikube service proj1-web-service --url` to get the access URL.
- For cloud clusters, consider changing Service type to LoadBalancer or configure an Ingress.
