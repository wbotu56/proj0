# v0.03 - app deployed via minikube, accessed by $(minikube ip):30442 address
## How to start app:
```bash
for file in app-deployment.yaml  app-service.yaml  db-deployment.yaml  db-service.yaml; do kubectl apply -f $file; done
```
