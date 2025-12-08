```
kubectl config get-contexts
```

```
kubectl get namespaces 
```

```
kubectl create ns nginx
```

```
kubectl apply -f namespace.yml 
```

```
kubectl apply -f pod.yml 
```

```
kubectl exec -it nginx-pod -n nginx -- bash
```

```
kubectl describe pod/nginx-pod -n nginx
```

```
kubectl delete -f pod.yml
```

```
kubectl apply -f ./deployment.yml
```

```
kubectl scale deployment/nginx-deployment -n nginx --replicas=5
```

```
kubectl set image deployment/nginx-deployment  -n nginx  nginx=nginx:latest
```