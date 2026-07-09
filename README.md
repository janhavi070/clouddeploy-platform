# 🚀 CloudDeploy Platform

A beginner-friendly DevOps project that demonstrates how to build, package and deploy a Python application using a complete CI/CD pipeline.

This project combines GitHub, Jenkins, Docker, Kubernetes and Helm into one simple workflow that is easy to understand and extend.

---

## ✨ Features

- Flask application
- Docker containerization
- Jenkins CI/CD pipeline
- Blue Ocean pipeline visualization
- Kubernetes (Kind)
- Helm deployments
- ConfigMaps
- Secrets
- Health checks
- Environment-based deployments
- Build number injection
- Git commit injection
- Docker Hub integration

---

## 🛠 Tech Stack

- Python (Flask)
- Docker
- Jenkins
- Blue Ocean
- Kubernetes (Kind)
- Helm
- Git & GitHub

---

## 📂 Project Structure

```
clouddeploy-platform/
.
├── app
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
├── docker
│   └── docker-compose.yml
├── helm
│   └── clouddeploy
│       ├── Chart.yaml
│       ├── charts
│       ├── templates
│       │   ├── _helpers.tpl
│       │   ├── configmap.yaml
│       │   ├── deployment.yaml
│       │   ├── ingress.yaml
│       │   ├── secret.yaml
│       │   └── service.yaml
│       ├── values-development.yaml
│       ├── values-production.yaml
│       ├── values-qa.yaml
│       └── values.yaml
├── jenkins
│   └── Jenkinsfile
├── kind-config.yaml
├── kubernetes
│   └── base
│       ├── configmap.yaml
│       ├── deployment.yaml
│       ├── ingress.yaml
│       ├── namespace.yaml
│       ├── secret.yaml
│       └── service.yaml
├── LICENSE
├── README.md
├── screenshots
└── scripts
    ├── build-image.sh
    ├── deploy.sh
    ├── load-kind.sh
    └── push-image.sh
```

---

## ⚙️ How it Works

```
Developer
    │
    ▼
Git Push
    │
    ▼
Jenkins Pipeline
    │
    ▼
Docker Image Build
    │
    ▼
Docker Hub (Production)
    │
    ▼
Kind Kubernetes Cluster
    │
    ▼
Helm Deployment
    │
    ▼
Flask Application
```

---

## 🔄 CI/CD Pipeline

The Jenkins pipeline performs the following steps:

1. Checkout source code
2. Build Docker image
3. Push image to Docker Hub (Production only)
4. Load image into Kind
5. Deploy using Helm
6. Verify Kubernetes rollout
7. Display deployment summary

Blue Ocean provides a visual representation of every pipeline stage.

---

## 🌍 Environments

The project supports multiple deployment environments.

```
development
qa
production
```

Each environment has its own Helm values file.

```
values-development.yaml
values-qa.yaml
values-production.yaml
```

---

## 🔐 Configuration Management

Application configuration is managed using Kubernetes resources.

### ConfigMap

Stores:

- Application name
- Version
- Environment
- Build number
- Git commit

### Secret

Stores:

- Database username
- Database password

---

## ❤️ Health Checks

The application exposes:

```
/health
```

Kubernetes uses this endpoint for:

- Readiness Probe
- Liveness Probe

---

## 📦 Sample Response

```
GET /
```

```json
{
  "application": "CloudDeploy Platform",
  "version": "1.0.0",
  "environment": "development",
  "build": "15",
  "git_commit": "c6ff866",
  "database_connected": true,
  "database_user": "admin",
  "status": "healthy"
}
```

---

## ▶️ Running the Project

Clone the repository

```bash
git clone https://github.com/janhavi070/clouddeploy-platform.git
```

Build the application

```bash
docker build -t clouddeploy-platform ./app
```

Deploy using Helm

```bash
helm upgrade --install clouddeploy ./helm/clouddeploy \
-n clouddeploy
```

Open the application

```
http://clouddeploy.local
```

---

## 📚 What I Learned

While building this project I learned how to:

- Build Docker images
- Write Jenkins pipelines
- Deploy applications to Kubernetes
- Package applications using Helm
- Manage configuration using ConfigMaps and Secrets
- Use health probes
- Deploy to multiple environments
- Inject build metadata into applications
- Build a complete CI/CD workflow

---

## 🚀 Future Improvements

Some features I would like to add in the future:

- GitHub Webhooks
- Automated Testing
- Monitoring with Prometheus & Grafana
- Terraform for Infrastructure as Code
- AWS EKS Deployment

---

## 🙌 Acknowledgements

This project was built as a hands-on learning exercise to better understand modern DevOps workflows and Kubernetes deployments.

If you're learning DevOps too, I hope this repository helps you understand how all these tools fit together.
