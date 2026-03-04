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
kubectl get ns
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

```
kubectl port-forward service/nginx-service -n nginx 80:80 --address=0.0.0.0
```
```
kubectl get all -n nginx
```

```
kubectl rollout restart deployment notes-app-deployment -n notes-app
```


```
kubectl get ing -n nginx
```

```
kubectl get all -n nginx
```


```
sudo -E kubectl port-forward  service/ingress-nginx-controller -n ingress-nginx 8080:80 --address=0.0.0.0
```

```
kubectl get configmap -n mysql
```

```
kubectl get secrets -n mysql
```

```
kubectl delete pod  mysql-statefulset-0 -n mysql
```

```
kubectl taint node  mayankxdev13-worker prod=true:NoSchedule
```
```
kubectl get ns
```

```
kubectl taint node  mayankxdev13-worker2  prod=true:NoSchedule-
```

YML File -> Manifest File








