<link rel="stylesheet" href="/docs/assets/css/custom.css">

### Dosya Sistemi Gezintisi  
[`pwd`](pwd.md), [`cd`](cd.md), [`ls`](ls.md), [`tree`](tree.md)

### Dosya ve Dizin İşlemleri  
[`cp`](cp.md), [`mv`](mv.md), [`rm`](rm.md), [`mkdir`](mkdir.md), [`rmdir`](rmdir.md),  
[`touch`](touch.md), [`ln`](ln.md), [`ln -s`](ln-s.md), [`stat`](stat.md), [`file`](file.md)

### Dosya İçeriği Görüntüleme  
[`cat`](cat.md), [`less`](less.md), [`head`](head.md), [`tail`](tail.md), [`nl`](nl.md), [`tac`](tac.md)

### Disk Kullanımı & FS Bilgisi  
[`df`](df.md), [`du`](du.md), [`lsblk`](lsblk.md), [`blkid`](blkid.md), [`mount`](mount.md), [`umount`](umount.md)

### Disk Bölümlendirme & Oluşturma  
[`fdisk`](fdisk.md), [`parted`](parted.md), [`mkfs`](mkfs.md)

### LVM Yönetimi  
[`pvcreate`](pvcreate.md), [`pvdisplay`](pvdisplay.md), [`pvs`](pvs.md), [`pvmove`](pvmove.md), [`pvremove`](pvremove.md),  
[`vgcreate`](vgcreate.md), [`vgdisplay`](vgdisplay.md), [`vgs`](vgs.md), [`vgextend`](vgextend.md), [`vgremove`](vgremove.md),  
[`lvcreate`](lvcreate.md), [`lvdisplay`](lvdisplay.md), [`lvs`](lvs.md), [`lvextend`](lvextend.md),  
[`lvreduce`](lvreduce.md), [`lvremove`](lvremove.md), [`xfs_growfs`](xfs_growfs.md)

### Disk Onarım  
[`fsck`](fsck.md), [`xfs_repair`](xfs_repair.md)

### Swap Yönetimi  
[`mkswap`](mkswap.md), [`swapon`](swapon.md), [`swapoff`](swapoff.md)

### Dosya İzinleri & Sahiplik  
[`chmod`](chmod.md), [`chown`](chown.md), [`chgrp`](chgrp.md), [`umask`](umask.md)

### Dosya Arama & Metin İşleme  
[`grep`](grep.md), [`awk`](awk.md), [`sed`](sed.md), [`cut`](cut.md), [`sort`](sort.md),  
[`uniq`](uniq.md), [`tr`](tr.md), [`wc`](wc.md), [`find`](find.md), [`locate`](locate.md), [`updatedb`](updatedb.md)

### Paket Yönetimi  
[`apt`](apt.md), [`apt-get`](apt-get.md), [`dpkg`](dpkg.md), [`snap`](snap.md)

### Sistem Bilgisi & Donanım  
[`uname`](uname.md), [`lscpu`](lscpu.md), [`lshw`](lshw.md), [`lsusb`](lsusb.md), [`lspci`](lspci.md),  
[`uptime`](uptime.md), [`free`](free.md), [`vmstat`](vmstat.md), [`dmesg`](dmesg.md),  
[`dmidecode`](dmidecode.md), [`hostnamectl`](hostnamectl.md), [`timedatectl`](timedatectl.md)

### Proses Yönetimi  
[`ps`](ps.md), [`top`](top.md), [`htop`](htop.md), [`jobs`](jobs.md), [`bg`](bg.md),  
[`fg`](fg.md), [`kill`](kill.md), [`pkill`](pkill.md), [`nice`](nice.md),  
[`renice`](renice.md), [`nohup`](nohup.md), [`pidstat`](pidstat.md)

### Servis & Sistem Yönetimi  
[`systemctl`](systemctl.md), [`service`](service.md), [`poweroff`](poweroff.md), [`reboot`](reboot.md), [`init`](init.md)

### Log Yönetimi & Analizi  
[`journalctl`](journalctl.md), [`logger`](logger.md), [`logrotate`](logrotate.md), [`tail`](tail.md)

### Zamanlanmış Görevler  
[`cron`](cron.md), [`crontab`](crontab.md), [`systemctl (timer)`](systemctl-timer.md)

### Kullanıcı & Grup Yönetimi  
[`adduser`](adduser.md), [`addgroup`](addgroup.md), [`deluser`](deluser.md),  
[`delgroup`](delgroup.md), [`usermod`](usermod.md), [`groupmod`](groupmod.md),  
[`passwd`](passwd.md), [`sudo`](sudo.md)

### Ağ Araçları  
[`ip`](ip.md), [`ping`](ping.md), [`ss`](ss.md), [`nc`](nc.md),  
[`traceroute`](traceroute.md), [`curl`](curl.md), [`wget`](wget.md),  
[`dig`](dig.md), [`nslookup`](nslookup.md)

### Ağ Yapılandırma & DNS  
[`netplan`](netplan.md), [`resolvectl`](resolvectl.md)

### Güvenlik Duvarı & Güvenlik  
[`ufw`](ufw.md), [`iptables`](iptables.md), [`fail2ban`](fail2ban.md)

### SSH & Uzak Erişim  
[`ssh`](ssh.md), [`scp`](scp.md), [`ssh-keygen`](ssh-keygen.md), [`ssh-copy-id`](ssh-copy-id.md)

### Arşivleme & Sıkıştırma  
[`tar`](tar.md), [`gzip`](gzip.md), [`gunzip`](gunzip.md), [`bzip2`](bzip2.md),  
[`bunzip2`](bunzip2.md), [`zip`](zip.md), [`unzip`](unzip.md), [`xz`](xz.md), [`unxz`](unxz.md)

### Yedekleme & Senkronizasyon  
[`rsync`](rsync.md)

### Şifreleme & Kriptografi  
[`openssl`](openssl.md), [`gpg`](gpg.md), [`cryptsetup`](cryptsetup.md)

### Modül & Donanım Yönetimi  
[`lsmod`](lsmod.md), [`modprobe`](modprobe.md)

### Açık Dosyalar & Bağlantılar  
[`lsof`](lsof.md), [`fuser`](fuser.md)

### Performans İzleme  
[`vmstat`](vmstat.md), [`iostat`](iostat.md), [`iotop`](iotop.md),  
[`iftop`](iftop.md), [`sar`](sar.md), [`perf`](perf.md)

### Zaman & Tarih  
[`timedatectl`](timedatectl.md), [`hwclock`](hwclock.md), [`date`](date.md), [`cal`](cal.md)

### Yerel Ayarlar  
[`locale`](locale.md), [`update-locale`](update-locale.md)

### Kabuk & Çevre  
[`bash`](bash.md), [`env`](env.md), [`export`](export.md), [`alias`](alias.md),  
[`unalias`](unalias.md), [`source`](source.md), [`echo`](echo.md), [`history`](history.md)

### Kabuk Betikleri  
`#!`, [`chmod +x`](chmod.md)

### Oturum & Terminal Çoklayıcılar  
[`screen`](screen.md), [`tmux`](tmux.md)

### Bluetooth & Kablosuz Ağlar  
[`bluetoothctl`](bluetoothctl.md), [`iw`](iw.md), [`rfkill`](rfkill.md)
