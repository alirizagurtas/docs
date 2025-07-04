```bash tab="Linux"
curl -sL https://install.example.com | bash
```

```powershell
Install-Module -Name MyApp
```

```Dockerfile
FROM ubuntu:22.04
COPY docs /app/docs
RUN /app/docs/1-INSTALLATION/automated/install.sh
```

```yaml
# .github/workflows/docs-check.yml
- name: Validate install scripts
  run: |
    cd 1-INSTALLATION/automated/
    ./test-all.sh
```

# fdisk — Ubuntu 24.04

**Sürüm:** `fdisk --version` ⇒ util-linux 2.39.3  
**Oluşturma Tarihi:** 2025-07-03

---

## 📌 Kısa Tanım
`fdisk`; disk bölümleme tablosunu yönetmek için kullanılan bir komut satırı aracıdır.

---

## 📋 Söz Dizimi
```bash
fdisk [SEÇENEKLER] [AYGIT]
```

---

## ⚙️ Tüm Parametreler ve Hızlı Örnekler
| Parametre | Açıklama | Canlı Örnek | Beklenen Çıktı/Kayıt |
|-----------|----------|-------------|----------------------|
| `-b, --sector-size <boyut>` | Sektör boyutunu belirtir (512, 1024, 2048, 4096) | `fdisk -b 2048 /dev/sda` | 2048 bayt sektör boyutuyla çalışır |
| `-B, --protect-boot` | İlk sektörün başını silmez | `fdisk -B /dev/sda` | İlk sektör korunur |
| `-c, --compatibility[=<mod>]` | Uyumluluk modu (dos/nondos) | `fdisk -c=dos /dev/sda` | DOS uyumlu modda çalışır |
| `-L, --color[=<zaman>]` | Çıktıyı renklendirir (auto, always, never) | `fdisk -L=always /dev/sda` | Renkli çıktı |
| `-l, --list` | Bölüm tablosunu listeler | `sudo fdisk -l /dev/sda` | Disk bölümleri listelenir |
| `-x, --list-details` | Ayrıntılı bölüm listesi | `sudo fdisk -x /dev/sda` | Bölüm detayları gösterilir |
| `-n, --noauto-pt` | Boş cihazlarda varsayılan tablo oluşturmaz | `fdisk -n /dev/sda` | Varsayılan tablo oluşturulmaz |
| `-o, --output <liste>` | Çıktı sütunlarını belirtir | `fdisk -o Device,Size /dev/sda` | Cihaz ve boyut sütunları gösterilir |
| `-t, --type <tür>` | Belirtilen bölüm tablosu türünü tanır | `fdisk -t gpt /dev/sda` | Yalnızca GPT tablosu tanınır |
| `-u, --units[=<birim>]` | Görüntü birimini belirtir (cylinders/sectors) | `fdisk -u=sectors /dev/sda` | Sektör birimiyle çalışır |
| `-s, --getsz` | Cihaz boyutunu 512 baytlık sektörlerde gösterir [DEPRECATED] | `fdisk -s /dev/sda` | Cihaz boyutu gösterilir |
| `--bytes` | Boyutu bayt cinsinden gösterir | `fdisk --bytes /dev/sda` | Boyut bayt olarak listelenir |
| `--lock[=<mod>]` | Cihazı kilitler (yes, no, nonblock) | `fdisk --lock=yes /dev/sda` | Cihaz kilitlenir |
| `-w, --wipe <mod>` | İmzaları siler (auto, always, never) | `fdisk -w always /dev/sda` | İmzalar silinir |
| `-W, --wipe-partitions <mod>` | Yeni bölümlerin imzalarını siler | `fdisk -W always /dev/sda` | Bölüm imzaları silinir |
| `-C, --cylinders <sayı>` | Silindir sayısını belirtir | `fdisk -C 1000 /dev/sda` | 1000 silindir kullanılır |
| `-H, --heads <sayı>` | Kafa sayısını belirtir | `fdisk -H 255 /dev/sda` | 255 kafa kullanılır |
| `-S, --sectors <sayı>` | Parça başına sektör sayısını belirtir | `fdisk -S 63 /dev/sda` | 63 sektör/parça kullanılır |
| `-h, --help` | Yardım ekranını gösterir | `fdisk -h` | Yardım metni |
| `-V, --version` | Sürüm bilgisini gösterir | `fdisk -V` | util-linux 2.39.3 |

---

## 💡 Temel Kullanımlar
```bash
# Disk bölümlerini listele
sudo fdisk -l /dev/sda

# Bölümleme için komut moduna gir
sudo fdisk /dev/sda
```

---

## 🛠️ Gelişmiş Senaryolar
### 1. Yeni GPT Bölüm Tablosu Oluşturma
```bash
sudo fdisk /dev/sdb
g # Yeni GPT tablosu oluştur
w # Değişiklikleri kaydet
```
Yeni bir GPT bölümü tablosu oluşturur.

### 2. Yeni Birincil Bölüm Ekleme
```bash
sudo fdisk /dev/sdb
n # Yeni bölüm
p # Birincil
1 # Bölüm numarası
# Varsayılan ilk sektör
+10G # 10 GB boyut
w # Kaydet
```
10 GB'lık birincil bölüm oluşturur.

### 3. Bölüm Türünü Değiştirme
```bash
sudo fdisk /dev/sdb
t # Tür değiştir
1 # Bölüm numarası
83 # Linux dosya sistemi
w # Kaydet
```
Bölüm türünü Linux dosya sistemine ayarlar.

---

## 🛡️ Güvenlik / Riskler
| Komut | Risk | Güvenli Alternatif |
|-------|------|--------------------|
| `fdisk /dev/sda` | ⚠️ Yanlış komut veri kaybına neden olabilir | Önce `fdisk -l` ile diski kontrol et |
| `dd if=/dev/zero of=/dev/sda1` | ⚠️ Bölüm verilerini siler | Yedek al, doğru cihazı doğrula |

> **Not:** `sudo` gereklidir; yanlış cihaz seçimi tüm verileri silebilir.

---

## 🧑‍🏫 Best Practices
* Her zaman yedek al.
* Önce `fdisk -l` ile disk durumunu kontrol et.
* Değişiklikleri kaydetmeden önce `p` ile tabloyu incele.

---

## 🐞 Sorun Giderme
| Belirti | Olası Sebep | Çözüm |
|---------|-------------|-------|
| “Invalid partition table” | Bozuk tablo | `fsck /dev/sda` ile kontrol et |
| “Device is busy” | Disk kullanımda | `umount /dev/sda1` ile çıkar |

---

## 🔄 Çıkış Kodları
| Kod | Anlam |
|-----|-------|
| 0 | Başarılı |
| 1 | Genel hata |
| 2+ | Özel hata (man sayfasına bak) |

---

## 🔗 İlgili Komutlar
`cfdisk`, `sfdisk`, `parted`, `mkfs`

---

## ❓ SSS
**S:** `fdisk` ile GPT mi yoksa MBR mi kullanmalıyım?  
**C:** GPT modern ve büyük diskler için önerilir.

**S:** Bölüm silmek güvenli mi?  
**C:** Verileri yedekle, yanlış bölüm silinirse kurtarma zor.

**S:** `fdisk` değişiklikleri hemen uygular mı?  
**C:** Hayır, `w` komutuyla kaydedilir.

**S:** EFI sistem bölümü nasıl oluştururum?  
**C:** `n` ile bölüm ekle, `t` ile “ef” türü seç.

**S:** `fdisk -l` neden çalışmıyor?  
**C:** `sudo` kullan; izin gerekiyor.

**Kaynak:** https://manpages.ubuntu.com/manpages/noble/en/man8/fdisk.8.html
