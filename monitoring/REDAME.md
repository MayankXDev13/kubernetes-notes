```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

```
helm repo list
```

```
helm repo update 
```

```
helm install prometheus-stack prometheus-community/kube-prometheus-stack \
  --namespace monitoring --create-namespace \
  --set prometheus.service.type=NodePort \
  --set prometheus.service.nodePort=30000 \
  --set grafana.service.type=NodePort \
  --set grafana.service.nodePort=31000
```

```
kubectl get pods -n monitoring
```

##  Get Grafana password

```
kubectl --namespace monitoring get secrets prometheus-stack-grafana \
  -o jsonpath="{.data.admin-password}" | base64 -d ; echo
```

Username: admin
Password: (output of above command)


## Access Grafana (important for your setup)

You used NodePort, but since you're on GitHub Codespaces, NodePort usually won’t be directly accessible externally.

👉 Recommended method (works everywhere):
kubectl port-forward svc/prometheus-stack-grafana 3000:80 -n monitoring

Then open:

http://localhost:3000


##  Access Prometheus UI
kubectl port-forward svc/prometheus-stack-kube-prometheus-prometheus 9090:9090 -n monitoring

Open:

http://localhost:9090

```
kubectl get svc -n monitoring
```


```
kubectl port-forward services/prometheus-stack-kube-prom-prometheus -n monitoring  9090:9090
```
```
kubectl port-forward services/prometheus-stack-grafana -n monitoring 3000:80
```
