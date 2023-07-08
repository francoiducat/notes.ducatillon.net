## Kubernetes & Docker commands for developers

### Export pod logs
```
kubectl logs pod-name -n namespace-name >> /export/path/file.txt
```

### Use bach inside a pod 
```
kubectl exec -it myPod -n myNameSpace  -- /bin/bash
```

### Run container
```
docker run -p 8080:80 --name=nginx
```

### Run specific docker service

```
docker-compose up -d myDatabaseApp
```
