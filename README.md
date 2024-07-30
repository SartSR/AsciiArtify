kind create cluster --config=kind-config.yaml --name=stage1
kubectl cluster-info --context kind-stage1
kind load docker-image server.py:v1.0.1 --name=stage1
k get nodes
docker ps
kubectl get deployment 
k apply -f serverpy_app.yaml
k get service
k get pods
k port-forward service/serverpy-service 8000:8000
curl -v localhost:8000