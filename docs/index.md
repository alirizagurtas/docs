## İçindekiler

1. [Dosya Sistemi Gezintisi](#dosya-sistemi-gezintisi)
2. [Dosya ve Dizin İşlemleri](#dosya-ve-dizin-işlemleri)
3. [Dosya İçeriği Görüntüleme](#dosya-içeriği-görüntüleme)
4. [Disk Kullanımı & FS Bilgisi](#disk-kullanımı--fs-bilgisi)
5. [Disk Bölümlendirme & Oluşturma](#disk-bölümlendirme--oluşturma)
6. [LVM Yönetimi](#lvm-yönetimi)
7. [Disk Onarım](#disk-onarım)
8. [Swap Yönetimi](#swap-yönetimi)
9. [Dosya İzinleri & Sahiplik](#dosya-izinleri--sahiplik)
10. [Dosya Arama & Metin İşleme](#dosya-arama--metin-işleme)
11. [Paket Yönetimi](#paket-yönetimi)
12. [Sistem Bilgisi & Donanım](#sistem-bilgisi--donanım)
13. [Proses Yönetimi](#proses-yönetimi)
14. [Servis & Sistem Yönetimi](#servis--sistem-yönetimi)
15. [Log Yönetimi & Analizi](#log-yönetimi--analizi)
16. [Zamanlanmış Görevler](#zamanlanmış-görevler)
17. [Kullanıcı & Grup Yönetimi](#kullanıcı--grup-yönetimi)
18. [Ağ Araçları](#ağ-araçları)
19. [Ağ Yapılandırma & DNS](#ağ-yapılandırma--dns)
20. [Güvenlik Duvarı & Güvenlik](#güvenlik-duvarı--güvenlik)
21. [SSH & Uzak Erişim](#ssh--uzak-erişim)
22. [Arşivleme & Sıkıştırma](#arşivleme--sıkıştırma)
23. [Yedekleme & Senkronizasyon](#yedekleme--senkronizasyon)
24. [Şifreleme & Kriptografi](#şifreleme--kriptografi)
25. [Modül & Donanım Yönetimi](#modül--donanım-yönetimi)
26. [Açık Dosyalar & Bağlantılar](#açık-dosyalar--bağlantılar)
27. [Performans İzleme](#performans-izleme)
28. [Zaman & Tarih](#zaman--tarih)
29. [Yerel Ayarlar](#yerel-ayarlar)
30. [Kabuk & Çevre](#kabuk--çevre)
31. [Kabuk Betikleri](#kabuk-betikleri)
32. [Oturum & Terminal Çoklayıcılar](#oturum--terminal-çoklayıcılar)
33. [Bluetooth & Kablosuz Ağlar](#bluetooth--kablosuz-ağlar)

---

### Dosya Sistemi Gezintisi

`pwd`, `cd`, `ls`, `tree`

### Dosya ve Dizin İşlemleri

`cp`, `mv`, `rm`, `mkdir`, `rmdir`, `touch`, `ln`, `ln -s`, `stat`, `file`

### Dosya İçeriği Görüntüleme

`cat`, `less`, `head`, `tail`, `nl`, `tac`

### Disk Kullanımı & FS Bilgisi

`df`, `du`, `lsblk`, `blkid`, `mount`, `umount`

### Disk Bölümlendirme & Oluşturma

`fdisk`, `parted`, `mkfs`

### LVM Yönetimi

`pvcreate`, `pvdisplay`, `pvs`, `pvmove`, `pvremove`, `vgcreate`, `vgdisplay`, `vgs`, `vgextend`, `vgremove`,
`lvcreate`, `lvdisplay`, `lvs`, `lvextend`, `lvreduce`, `lvremove`, `xfs_growfs`

### Disk Onarım

`fsck`, `xfs_repair`

### Swap Yönetimi

`mkswap`, `swapon`, `swapoff`

### Dosya İzinleri & Sahiplik

`chmod`, `chown`, `chgrp`, `umask`

### Dosya Arama & Metin İşleme

`grep`, `awk`, `sed`, `cut`, `sort`, `uniq`, `tr`, `wc`, `find`, `locate`, `updatedb`

### Paket Yönetimi

`apt`, `apt-get`, `dpkg`, `snap`

### Sistem Bilgisi & Donanım

`uname`, `lscpu`, `lshw`, `lsusb`, `lspci`, `uptime`, `free`, `vmstat`, `dmesg`,
`dmidecode`, `hostnamectl`, `timedatectl`

### Proses Yönetimi

`ps`, `top`, `htop`, `jobs`, `bg`, `fg`, `kill`, `pkill`, `nice`, `renice`, `nohup`, `pidstat`

### Servis & Sistem Yönetimi

`systemctl`, `service`, `poweroff`, `reboot`, `init`

### Log Yönetimi & Analizi

`journalctl`, `logger`, `logrotate`, `tail`

### Zamanlanmış Görevler

`cron`, `crontab`, `systemctl (timer)`

### Kullanıcı & Grup Yönetimi

`adduser`, `addgroup`, `deluser`, `delgroup`, `usermod`, `groupmod`, `passwd`, `sudo`

### Ağ Araçları

`ip`, `ping`, `ss`, `nc`, `traceroute`, `curl`, `wget`, `dig`, `nslookup`

### Ağ Yapılandırma & DNS

`netplan`, `resolvectl`

### Güvenlik Duvarı & Güvenlik

`ufw`, `iptables`, `fail2ban`

### SSH & Uzak Erişim

`ssh`, `scp`, `ssh-keygen`, `ssh-copy-id`

### Arşivleme & Sıkıştırma

`tar`, `gzip`, `gunzip`, `bzip2`, `bunzip2`, `zip`, `unzip`, `xz`, `unxz`

### Yedekleme & Senkronizasyon

`rsync`

### Şifreleme & Kriptografi

`openssl`, `gpg`, `cryptsetup`

### Modül & Donanım Yönetimi

`lsmod`, `modprobe`

### Açık Dosyalar & Bağlantılar

`lsof`, `fuser`

### Performans İzleme

`vmstat`, `iostat`, `iotop`, `iftop`, `sar`, `perf`

### Zaman & Tarih

`timedatectl`, `hwclock`, `date`, `cal`

### Yerel Ayarlar

`locale`, `update-locale`

### Kabuk & Çevre

`bash`, `env`, `export`, `alias`, `unalias`, `source`, `echo`, `history`

### Kabuk Betikleri

`#!`, `chmod +x`

### Oturum & Terminal Çoklayıcılar

`screen`, `tmux`

### Bluetooth & Kablosuz Ağlar

`bluetoothctl`, `iw`, `rfkill`
