#!/bin/bash

# Install KIND (Kubernetes IN Docker)

set -e

echo "Downloading Kind..."
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64

echo "Making binary executable..."
chmod +x ./kind

echo "Moving Kind to /usr/local/bin..."
sudo mv ./kind /usr/local/bin/kind

echo "Checking installation..."
kind --version

echo "Kind installed successfully!"

