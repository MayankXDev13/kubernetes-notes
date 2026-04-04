# Kubernetes kubectl Command Cheat Sheet

## 1. Namespace Commands

### Create Namespace

```bash
kubectl create ns nginx
```

### List Namespaces

```bash
kubectl get ns
```

### Delete Namespace

```bash
kubectl delete ns nginx
```

---

## 2. Pod Commands

### Create Pod

```bash
kubectl run nginx --image=nginx
```

### Create Pod in Namespace

```bash
kubectl run nginx --image=nginx -n nginx
```

### Delete Pod

```bash
kubectl delete pod nginx
```

### List Pods

```bash
kubectl get pods -n nginx
```

### Detailed Pod Information

```bash
kubectl describe pod/nginx-pod -n nginx
```

### Execute Inside Pod

```bash
kubectl exec -it pod/nginx-pod -n nginx -- bash
```

### Pod Logs

```bash
kubectl logs pod/demo-job-tdxzr -n nginx
```

---

## 3. Deployment Commands

### Get Deployments

```bash
kubectl get deployment -n nginx
```

### Scale Deployment

```bash
kubectl scale deployment/nginx-deployment -n nginx --replicas=5
```

### Update Image

```bash
kubectl set image deployment/nginx-deployment -n nginx nginx=nginx:latest
```

### Restart Deployment

```bash
kubectl rollout restart deployment notes-app-deployment -n notes-app
```

---

## 4. Services and Port Forwarding

### Port Forward Service

```bash
kubectl port-forward service/nginx-service -n nginx 80:80 --address=0.0.0.0
```

### Port Forward Apache Service

```bash
sudo -E kubectl port-forward service/apache-service -n apache 82:80 --address=0.0.0.0 &
```

---

## 5. Cluster Resources

### Get All Resources

```bash
kubectl get all -n nginx
```

### Get Pods with More Details

```bash
kubectl get pods -n nginx -o wide
```

---

## 6. Storage

### Persistent Volumes

```bash
kubectl get pv
```

### Persistent Volume Claims

```bash
kubectl get pvc
```

---

## 7. Jobs

### List Jobs

```bash
kubectl get jobs -n nginx
```

### View Job Logs

```bash
kubectl logs pod/demo-job-tdxzr -n nginx
```

---

## 8. ConfigMaps and Secrets

### ConfigMaps

```bash
kubectl get configmap -n mysql
```

### Secrets

```bash
kubectl get secrets -n mysql
```

---

## 9. StatefulSet Pod Management

```bash
kubectl delete pod mysql-statefulset-0 -n mysql
```

---

## 10. Node Taints

### Add Taint

```bash
kubectl taint node mayankxdev13-worker prod=true:NoSchedule
```

### Remove Taint

```bash
kubectl taint node mayankxdev13-worker2 prod=true:NoSchedule-
```

---

## 11. Monitoring

### Pod Resource Usage

```bash
kubectl top pod
```

### Node Resource Usage

```bash
kubectl top nodes
```

---

## 12. Autoscaling

### Horizontal Pod Autoscaler

```bash
kubectl get hpa -n apache
```

### Vertical Pod Autoscaler

```bash
kubectl get vpa -n apache
```

---

## 13. Ingress

### List Ingress

```bash
kubectl get ing -n nginx
```

### Port Forward Ingress Controller

```bash
sudo -E kubectl port-forward service/ingress-nginx-controller -n ingress-nginx 8080:80 --address=0.0.0.0
```

---

## 14. Example Kubernetes Manifest (YAML)

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  namespace: nginx
spec:
  containers:
    - name: nginx
      image: nginx
      ports:
        - containerPort: 80
```

---

## 14. RBAC

```
 kubectl auth whoami
```

```
kubectl auth can-i get pods
```

```
kubectl auth can-i get deployment -n apache
```

```
kubectl apply -f role.yml
```

```
kubectl get role -n apache
```

```
kubectl apply -f service-account.yml
```

```
kubectl get serviceaccounts -n apache
```

```
kubectl auth can-i get pods -n apache --as=apache-user
```

```
kubectl apply -f role-binding.yml
```

```
kubectl apply -f role-binding.yml
```

```
kubectl get rolebindings -n apache
```

### Apply Manifest

```bash
kubectl apply -f pod.yaml
```

---

# 15. HELM

> **Helm is a package manager for Kubernetes**

---

## Install Helm on Ubuntu

```bash
sudo apt-get install curl gpg apt-transport-https --yes

curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey \
| gpg --dearmor \
| sudo tee /usr/share/keyrings/helm.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" \
| sudo tee /etc/apt/sources.list.d/helm-stable-debian.list

sudo apt-get update
sudo apt-get install helm
```

---

## Create a Helm Chart

```bash
helm create <name-of-app>-helm
```

This command generates all required files.  
You mainly need to edit the `values.yaml` file.

---

## Package the Chart

```bash
helm package <folder-name>
```

---

## Install the Chart

```bash
helm install <name-of-app> <chart-name>
```

Example:

```bash
helm install dev-apache apache-helm -n dev-apache --create-namespace
```

---

## Uninstall the Chart

```bash
helm uninstall dev-apache -n dev-apache
```