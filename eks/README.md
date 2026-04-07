```
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
```

```
eksctl create cluster \
  --name=mayankxdev-wanderlust \
  --region=us-east-1 \
  --version=1.35 \
  --without-nodegroup
```

```
eksctl delete cluster \
  --name=mayankxdev-wanderlust \
  --region=us-east-1
```


