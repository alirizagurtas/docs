#!/bin/bash
set -e

DRY_RUN=false
ACTIONS=()
WARNINGS=()
ERRORS=()

# Renk kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Dry-run parametre kontrolü
if [[ "$1" == "--dry-run" ]]; then
  DRY_RUN=true
  shift
  echo -e "${BLUE}=== DRY-RUN MODU AKTİF ===${NC}"
  echo "Sistem kontrolü yapılacak, hiçbir değişiklik yapılmayacak"
  echo "------------------------------------------------------"
fi

# Yardımcı fonksiyonlar
check_command() {
    if command -v "$1" >/dev/null 2>&1; then
        echo -e "${GREEN}✓${NC} $1 mevcut"
        return 0
    else
        echo -e "${RED}✗${NC} $1 bulunamadı"
        return 1
    fi
}

check_port() {
    if lsof -i :$1 >/dev/null 2>&1; then
        echo -e "${YELLOW}⚠${NC} Port $1 zaten kullanımda"
        WARNINGS+=("Port $1 kullanımda - Redis çakışması olabilir")
        return 1
    else
        echo -e "${GREEN}✓${NC} Port $1 müsait"
        return 0
    fi
}

check_service() {
    if systemctl is-active --quiet "$1" 2>/dev/null; then
        echo -e "${YELLOW}⚠${NC} $1 servisi zaten çalışıyor"
        WARNINGS+=("$1 servisi zaten aktif")
        return 1
    else
        echo -e "${GREEN}✓${NC} $1 servisi durumunda"
        return 0
    fi
}

simulate_ubuntu_install() {
    echo -e "\n${BLUE}=== Ubuntu Redis Kurulum Simülasyonu ===${NC}"
    
    # Sistem kontrolleri
    echo -e "\n📋 Sistem Kontrolleri:"
    check_command "apt-get" || ERRORS+=("apt-get komutu bulunamadı")
    check_command "systemctl" || ERRORS+=("systemctl komutu bulunamadı")
    
    # Redis kontrolleri
    echo -e "\n🔍 Redis Durumu:"
    if check_command "redis-server"; then
        WARNINGS+=("Redis zaten kurulu - yeniden kurulum yapılacak")
    fi
    
    check_service "redis-server"
    check_port 6379
    
    # Disk alanı kontrolü
    echo -e "\n💾 Disk Alanı:"
    available_space=$(df / | awk 'NR==2 {print $4}')
    if [ "$available_space" -lt 100000 ]; then
        WARNINGS+=("Düşük disk alanı: ${available_space}KB")
    fi
    echo -e "${GREEN}✓${NC} Yeterli disk alanı mevcut"
    
    # Paket güncellemeleri simülasyonu
    echo -e "\n📦 Paket Durumu:"
    if apt list --upgradable 2>/dev/null | grep -q "redis"; then
        echo -e "${YELLOW}⚠${NC} Redis güncellemeleri mevcut"
    fi
    
    # Yapılacak işlemler
    echo -e "\n🎯 Yapılacak İşlemler:"
    echo "  1. Paket listesi güncellenecek"
    echo "  2. Redis-server paketi kurulacak"
    echo "  3. Redis servisi etkinleştirilecek"
    echo "  4. Redis servisi başlatılacak"
}

simulate_docker_install() {
    echo -e "\n${BLUE}=== Docker Redis Kurulum Simülasyonu ===${NC}"
    
    echo -e "\n📋 Docker Kontrolleri:"
    check_command "docker" || ERRORS+=("Docker kurulu değil")
    
    # Docker servis kontrolü
    if ! systemctl is-active --quiet docker 2>/dev/null; then
        ERRORS+=("Docker servisi çalışmıyor")
    else
        echo -e "${GREEN}✓${NC} Docker servisi aktif"
    fi
    
    # Port kontrolü
    echo -e "\n🔍 Port Kontrolleri:"
    check_port 6379
    
    # Mevcut konteyner kontrolü
    echo -e "\n🐳 Konteyner Durumu:"
    if docker ps -a --format "table {{.Names}}" | grep -q "redis"; then
        WARNINGS+=("'redis' isimli konteyner zaten mevcut")
    fi
    
    # Image kontrolü
    echo -e "\n🖼️ Image Durumu:"
    if docker images | grep -q "redis"; then
        echo -e "${GREEN}✓${NC} Redis image zaten mevcut"
    else
        echo -e "${YELLOW}⚠${NC} Redis image indirilecek (~100MB)"
    fi
    
    echo -e "\n🎯 Yapılacak İşlemler:"
    echo "  1. Redis image indirilecek (eğer yoksa)"
    echo "  2. Redis konteyneri oluşturulacak"
    echo "  3. Port 6379 yönlendirilecek"
}

simulate_k8s_install() {
    echo -e "\n${BLUE}=== Kubernetes Redis Kurulum Simülasyonu ===${NC}"
    
    echo -e "\n📋 Kubernetes Kontrolleri:"
    check_command "kubectl" || ERRORS+=("kubectl kurulu değil")
    
    # Cluster bağlantısı kontrolü
    echo -e "\n🔗 Cluster Bağlantısı:"
    if kubectl cluster-info >/dev/null 2>&1; then
        echo -e "${GREEN}✓${NC} Kubernetes cluster'a bağlı"
    else
        ERRORS+=("Kubernetes cluster'a bağlanılamıyor")
    fi
    
    # Manifest dosyası kontrolü
    manifest_path="../examples/redis-deployment.yaml"
    echo -e "\n📄 Manifest Dosyası:"
    if [ -f "$manifest_path" ]; then
        echo -e "${GREEN}✓${NC} Manifest dosyası mevcut: $manifest_path"
    else
        ERRORS+=("Manifest dosyası bulunamadı: $manifest_path")
    fi
    
    # Namespace kontrolü
    echo -e "\n🏷️ Namespace:"
    current_ns=$(kubectl config view --minify --output 'jsonpath={..namespace}')
    echo -e "${GREEN}✓${NC} Aktif namespace: ${current_ns:-default}"
    
    # Mevcut deployment kontrolü
    echo -e "\n🚀 Deployment Durumu:"
    if kubectl get deployment redis >/dev/null 2>&1; then
        WARNINGS+=("Redis deployment zaten mevcut")
    fi
    
    echo -e "\n🎯 Yapılacak İşlemler:"
    echo "  1. Redis deployment oluşturulacak"
    echo "  2. Deployment durumu kontrol edilecek"
}

# Ana fonksiyon
main() {
    echo "Redis kurulumu analiz ediliyor..."
    
    case "$1" in
        "ubuntu")
            if $DRY_RUN; then
                simulate_ubuntu_install
            else
                sudo apt update
                sudo apt install -y redis-server
                sudo systemctl enable redis-server
                sudo systemctl start redis-server
            fi
            ;;
        "docker")
            if $DRY_RUN; then
                simulate_docker_install
            else
                docker pull redis:latest
                docker run -d --name redis -p 6379:6379 redis:latest
            fi
            ;;
        "k8s")
            if $DRY_RUN; then
                simulate_k8s_install
            else
                manifest_path="../examples/redis-deployment.yaml"
                kubectl apply -f $manifest_path
                kubectl rollout status deployment/redis
            fi
            ;;
        *)
            echo "Kullanım: $0 [--dry-run] {ubuntu|docker|k8s}"
            exit 1
            ;;
    esac
    
    # Dry-run sonuçları
    if $DRY_RUN; then
        echo -e "\n${BLUE}=== DRY-RUN SONUÇLARI ===${NC}"
        
        if [ ${#ERRORS[@]} -gt 0 ]; then
            echo -e "\n${RED}❌ Kritik Sorunlar:${NC}"
            for error in "${ERRORS[@]}"; do
                echo -e "  • $error"
            done
        fi
        
        if [ ${#WARNINGS[@]} -gt 0 ]; then
            echo -e "\n${YELLOW}⚠️ Uyarılar:${NC}"
            for warning in "${WARNINGS[@]}"; do
                echo -e "  • $warning"
            done
        fi
        
        if [ ${#ERRORS[@]} -eq 0 ]; then
            echo -e "\n${GREEN}✅ Kurulum için hazır!${NC}"
            echo "Gerçek kurulum için komutu tekrar çalıştırın:"
            echo "  $0 $1"
        else
            echo -e "\n${RED}❌ Kurulum yapılamaz. Önce sorunları çözün.${NC}"
        fi
    else
        echo -e "${GREEN}✅ Redis kurulumu tamamlandı.${NC}"
    fi
}

main "$@"
