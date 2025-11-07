# Useful Commands

## Git
git init
git add .
git commit -m "Initial commit"
git push -u origin main

## Docker
docker build -t devrahul16/myweb:v1 .
docker images
docker run -p 8080:80 devrahul16/myweb:v1

## DockerHub
docker login
docker push devrahul16/myweb:v1

## Kubernetes (local via Docker Desktop)
kubectl apply -f dep.yaml
kubectl get pods
kubectl describe pod <pod-name>
kubectl get svc
kubectl delete -f dep.yaml
