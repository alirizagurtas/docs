# install-redis.sh
#!/bin/bash
set -e

echo "Redis kurulumu başlıyor..."
case "$1" in
  "ubuntu")
    sudo apt update && sudo apt install -y redis-server
    ;;
  "docker")
    docker run -d --name redis -p 6379:6379 redis:latest
    ;;
  "k8s")
    kubectl apply -f ../examples/redis-deployment.yaml
    ;;
  *)
    echo "Kullanım: $0 {ubuntu|docker|k8s}"
    exit 1
    ;;
esac
