## Kubernetes & Docker commands for developers

### Export pod logs

```bash
kubectl logs pod-name -n namespace-name >> /export/path/file.txt
```

###  Deploy a "debug/utils" pod

```bash
kubectl run -i --tty --rm debug --image=busybox --restart=Never --sh
```

### Use bach inside a pod

```bash
kubectl exec -it myPod -n myNameSpace  -- /bin/bash
```

### Run container

```bash
docker run -p 8080:80 --name=nginx
```

### Run specific docker service

```bash
docker-compose up -d myDatabaseApp
```

### Pod Port forwarding

```bash
kubectl port-forward pod/your-pod-name-85e45234ef-e345 8080:8080 -n your-name-space
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080
Handling connection for 8080
```

### Get Pods ip

Retrieve the IP of pods (pods of a deployment)

```bash
kubectl get pods -n resell-offer-api-preprod -o wide
```