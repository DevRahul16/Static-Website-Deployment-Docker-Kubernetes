# Static Website Deployment using Docker & Kubernetes

🚀 Project Overview
This project demonstrates how to **deploy a static website** using **Docker** and **Kubernetes** by following a real-world DevOps workflow.

It covers the complete lifecycle:
- Source code management using **Git & GitHub**
- Containerization of a static website using **Docker (Nginx)**
- Image storage using **DockerHub**
- Application deployment using **Kubernetes**

The goal of this project is to understand how modern applications are packaged, shipped, and deployed in a containerized environment.

---

🏗 Architecture & Deployment Flow

![Project Flow Diagram](docs/architecture.png)

### High-Level Flow
1. Developer writes static website code and pushes it to GitHub
2. Docker builds an image using the Dockerfile
3. Image is pushed to DockerHub
4. Kubernetes pulls the image and deploys it as Pods
5. Service exposes the application to users

---

📂 Repository Structure

```
static-website-deployment-docker-kubernetes/
│
├── index.html
├── about.html
├── membership.html
├── contact.html
│
├── Dockerfile
├── dep.yaml
│
├── diagrams/
│   ├── project-flowchart.png
│   └── architecture-diagram.png
│
├── docs/
│   ├── commands.md
│   └── setup-guide.md
│
└── README.md
```

---

🛠 Tech Stack

- **Version Control:** Git, GitHub  
- **Containerization:** Docker  
- **Container Registry:** DockerHub  
- **Web Server:** Nginx  
- **Orchestration:** Kubernetes (Docker Desktop / Local Cluster)

---

🏁 Deployment Steps

1️⃣ Push Website Files to GitHub
```bash
git init
git add .
git commit -m "Initial static website commit"
git branch -M main
git remote add origin https://github.com/devrahul16/static-website-deployment-docker-kubernetes.git
git push -u origin main
```

2️⃣ Clone the Repository
```bash
git clone https://github.com/devrahul16/static-website-deployment-docker-kubernetes.git
cd static-website-deployment-docker-kubernetes
```

3️⃣ Build Docker Image
```bash
docker build -t devrahul16/myweb:v1 .
```

4️⃣ Push Image to DockerHub
```bash
docker push devrahul16/myweb:v1
```

5️⃣ Deploy on Kubernetes
```bash
kubectl apply -f dep.yaml
kubectl get pods
kubectl get svc
```

Access the application at:
```
http://127.0.0.1:30080/
```

---

✨ Key Learnings
- Building Docker images for static websites
- Using DockerHub as an image registry
- Deploying applications on Kubernetes
- Exposing services using NodePort
- Understanding real-world DevOps workflows

---