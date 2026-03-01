```
kubectl create ns nginx
```


```
kubectl run nginx --image=nginx
```

```
kubectl delete pod nginx
```

```
kubectl run nginx --image=nginx -n nginx
```

```
kubectl get pods -n nginx

```
```
kubectl delete ns nginx
```

```
ubectl get ns
```

```
 kubectl get ns
```
```
kubectl exec -it pod/nginx-pod -n nginx -- bash
```

```
kubectl describe pod/nginx-pod -n nginx
```

```
kubectl get deployment -n nginx
```
```
kubectl scale deployment/nginx-deployment -n nginx --replicas=5

```

```
kubectl get pods -n nginx -o wide
```

```
kubectl set image deployment/nginx-deployment -n nginx nginx=nginx:latest

```


```
kubectl logs pod/demo-job-tdxzr -n nginx

```

```
kubectl get jobs -n nginx
```

```
kubectl get pv
```

```
kubectl get pvc
```

```
kubectl describe pod nginx-deployment-7cd5f7d67c-mzmxb -n nginx
```
YML File -> Manifest File

