#!/bin/bash
set -e

DRY_RUN=false
ACTIONS=()

# Dry-run parametre kontrolü
if [[ "$1" == "--dry-run" ]]; then
  DRY_RUN=true
  shift
  echo "=== DRY-RUN MODU AKTİF ==="
  echo "Hiçbir değişiklik yapılmayacak, sadece yapılacak işlemler gösterilecek"
  echo "---------------------------"
fi

echo "Redis kurulumu başlıyor..."

case "$1" in
  "ubuntu")
    if $DRY_RUN; then
      ACTIONS=(
        "apt-get --simulate update"
        "apt-get --simulate install redis-server"
        "echo 'systemctl --dry-run enable redis-server'"
      )
    else
      ACTIONS=(
        "sudo apt update"
        "sudo apt install -y redis-server"
        "sudo systemctl enable redis-server"
      )
    fi
    ;;
  "docker")
    ACTIONS=(
      "docker pull redis:latest"
      "docker run -d --name redis -p 6379:6379 redis:latest"
    )
    ;;
  "k8s")
    manifest_path="../examples/redis-deployment.yaml"
    ACTIONS=(
      "kubectl apply -f $manifest_path"
      "kubectl rollout status deployment/redis"
    )
    ;;
  *)
    echo "Kullanım: $0 [--dry-run] {ubuntu|docker|k8s}"
    exit 1
    ;;
esac

# İşlemleri yürütme veya göster
for step in "${ACTIONS[@]}"; do
  if $DRY_RUN; then
    expanded_cmd=$(eval echo "$step")
    echo -e "\e[33m[DRY-RUN]\e[0m: \e[34m$expanded_cmd\e[0m"
    echo " ├── Etki: Komut simüle edilecek"
    echo " └── Gerçek çalıştırma için --dry-run parametresini kaldırın"
  else
    echo "▶️ Çalıştırılıyor: $step"
    eval "$step"
  fi
done

if $DRY_RUN; then
  echo "==========================="
  echo "DRY-RUN ÖZETİ:"
  echo "Toplam ${#ACTIONS[@]} adım simüle edildi"
  echo "Gerçek kurulum için komutu tekrar çalıştırın:"
  echo "  $0 $1"
else
  echo "✅ Redis kurulumu tamamlandı."
fi
