<link rel="stylesheet" href="assets/css/custom.css">

### Dosya Sistemi Gezintisi  
[`pwd`](commands/pwd.md), [`cd`](commands/cd.md), [`ls`](commands/ls.md), [`tree`](commands/tree.md)

### Dosya ve Dizin İşlemleri  
[`cp`](commands/cp.md), [`mv`](commands/mv.md), [`rm`](commands/rm.md), [`mkdir`](commands/mkdir.md), [`rmdir`](commands/rmdir.md),  
[`touch`](commands/touch.md), [`ln`](commands/ln.md), [`ln -s`](commands/ln-s.md), [`stat`](commands/stat.md), [`file`](commands/file.md)

### Dosya İçeriği Görüntüleme  
[`cat`](commands/cat.md), [`less`](commands/less.md), [`head`](commands/head.md), [`tail`](commands/tail.md), [`nl`](commands/nl.md), [`tac`](commands/tac.md)

### Disk Kullanımı & FS Bilgisi  
[`df`](commands/df.md), [`du`](commands/du.md), [`lsblk`](commands/lsblk.md), [`blkid`](commands/blkid.md), [`mount`](commands/mount.md), [`umount`](commands/umount.md)

### Disk Bölümlendirme & Oluşturma  
[`fdisk`](commands/fdisk.md), [`parted`](commands/parted.md), [`mkfs`](commands/mkfs.md)

### LVM Yönetimi  
[`pvcreate`](commands/pvcreate.md), [`pvdisplay`](commands/pvdisplay.md), [`pvs`](commands/pvs.md), [`pvmove`](commands/pvmove.md), [`pvremove`](commands/pvremove.md),  
[`vgcreate`](commands/vgcreate.md), [`vgdisplay`](commands/vgdisplay.md), [`vgs`](commands/vgs.md), [`vgextend`](commands/vgextend.md), [`vgremove`](commands/vgremove.md),  
[`lvcreate`](commands/lvcreate.md), [`lvdisplay`](commands/lvdisplay.md), [`lvs`](commands/lvs.md), [`lvextend`](commands/lvextend.md),  
[`lvreduce`](commands/lvreduce.md), [`lvremove`](commands/lvremove.md), [`xfs_growfs`](commands/xfs_growfs.md)

### Disk Onarım  
[`fsck`](commands/fsck.md), [`xfs_repair`](commands/xfs_repair.md)

### Swap Yönetimi  
[`mkswap`](commands/mkswap.md), [`swapon`](commands/swapon.md), [`swapoff`](commands/swapoff.md)

### Dosya İzinleri & Sahiplik  
[`chmod`](commands/chmod.md), [`chown`](commands/chown.md), [`chgrp`](commands/chgrp.md), [`umask`](commands/umask.md)

### Dosya Arama & Metin İşleme  
[`grep`](commands/grep.md), [`awk`](commands/awk.md), [`sed`](commands/sed.md), [`cut`](commands/cut.md), [`sort`](commands/sort.md),  
[`uniq`](commands/uniq.md), [`tr`](commands/tr.md), [`wc`](commands/wc.md), [`find`](commands/find.md), [`locate`](commands/locate.md), [`updatedb`](commands/updatedb.md)

### Paket Yönetimi  
[`apt`](commands/apt.md), [`apt-get`](commands/apt-get.md), [`dpkg`](commands/dpkg.md), [`snap`](commands/snap.md)

### Sistem Bilgisi & Donanım  
[`uname`](commands/uname.md), [`lscpu`](commands/lscpu.md), [`lshw`](commands/lshw.md), [`lsusb`](commands/lsusb.md), [`lspci`](commands/lspci.md),  
[`uptime`](commands/uptime.md), [`free`](commands/free.md), [`vmstat`](commands/vmstat.md), [`dmesg`](commands/dmesg.md),  
[`dmidecode`](commands/dmidecode.md), [`hostnamectl`](commands/hostnamectl.md), [`timedatectl`](commands/timedatectl.md)

### Proses Yönetimi  
[`ps`](commands/ps.md), [`top`](commands/top.md), [`htop`](commands/htop.md), [`jobs`](commands/jobs.md), [`bg`](commands/bg.md),  
[`fg`](commands/fg.md), [`kill`](commands/kill.md), [`pkill`](commands/pkill.md), [`nice`](commands/nice.md),  
[`renice`](commands/renice.md), [`nohup`](commands/nohup.md), [`pidstat`](commands/pidstat.md)

### Servis & Sistem Yönetimi  
[`systemctl`](commands/systemctl.md), [`service`](commands/service.md), [`poweroff`](commands/poweroff.md), [`reboot`](commands/reboot.md), [`init`](commands/init.md)

### Log Yönetimi & Analizi  
[`journalctl`](commands/journalctl.md), [`logger`](commands/logger.md), [`logrotate`](commands/logrotate.md), [`tail`](commands/tail.md)

### Zamanlanmış Görevler  
[`cron`](commands/cron.md), [`crontab`](commands/crontab.md), [`systemctl (timer)`](commands/systemctl-timer.md)

### Kullanıcı & Grup Yönetimi  
[`adduser`](commands/adduser.md), [`addgroup`](commands/addgroup.md), [`deluser`](commands/deluser.md),  
[`delgroup`](commands/delgroup.md), [`usermod`](commands/usermod.md), [`groupmod`](commands/groupmod.md),  
[`passwd`](commands/passwd.md), [`sudo`](commands/sudo.md)

### Ağ Araçları  
[`ip`](commands/ip.md), [`ping`](commands/ping.md), [`ss`](commands/ss.md), [`nc`](commands/nc.md),  
[`traceroute`](commands/traceroute.md), [`curl`](commands/curl.md), [`wget`](commands/wget.md),  
[`dig`](commands/dig.md), [`nslookup`](commands/nslookup.md)

### Ağ Yapılandırma & DNS  
[`netplan`](commands/netplan.md), [`resolvectl`](commands/resolvectl.md)

### Güvenlik Duvarı & Güvenlik  
[`ufw`](commands/ufw.md), [`iptables`](commands/iptables.md), [`fail2ban`](commands/fail2ban.md)

### SSH & Uzak Erişim  
[`ssh`](commands/ssh.md), [`scp`](commands/scp.md), [`ssh-keygen`](commands/ssh-keygen.md), [`ssh-copy-id`](commands/ssh-copy-id.md)

### Arşivleme & Sıkıştırma  
[`tar`](commands/tar.md), [`gzip`](commands/gzip.md), [`gunzip`](commands/gunzip.md), [`bzip2`](commands/bzip2.md),  
[`bunzip2`](commands/bunzip2.md), [`zip`](commands/zip.md), [`unzip`](commands/unzip.md), [`xz`](commands/xz.md), [`unxz`](commands/unxz.md)

### Yedekleme & Senkronizasyon  
[`rsync`](commands/rsync.md)

### Şifreleme & Kriptografi  
[`openssl`](commands/openssl.md), [`gpg`](commands/gpg.md), [`cryptsetup`](commands/cryptsetup.md)

### Modül & Donanım Yönetimi  
[`lsmod`](commands/lsmod.md), [`modprobe`](commands/modprobe.md)

### Açık Dosyalar & Bağlantılar  
[`lsof`](commands/lsof.md), [`fuser`](commands/fuser.md)

### Performans İzleme  
[`vmstat`](commands/vmstat.md), [`iostat`](commands/iostat.md), [`iotop`](commands/iotop.md),  
[`iftop`](commands/iftop.md), [`sar`](commands/sar.md), [`perf`](commands/perf.md)

### Zaman & Tarih  
[`timedatectl`](commands/timedatectl.md), [`hwclock`](commands/hwclock.md), [`date`](commands/date.md), [`cal`](commands/cal.md)

### Yerel Ayarlar  
[`locale`](commands/locale.md), [`update-locale`](commands/update-locale.md)

### Kabuk & Çevre  
[`bash`](commands/bash.md), [`env`](commands/env.md), [`export`](commands/export.md), [`alias`](commands/alias.md),  
[`unalias`](commands/unalias.md), [`source`](commands/source.md), [`echo`](commands/echo.md), [`history`](commands/history.md)

### Kabuk Betikleri  
`#!`, [`chmod +x`](commands/chmod.md)

### Oturum & Terminal Çoklayıcılar  
[`screen`](commands/screen.md), [`tmux`](commands/tmux.md)

### Bluetooth & Kablosuz Ağlar  
[`bluetoothctl`](commands/bluetoothctl.md), [`iw`](commands/iw.md), [`rfkill`](commands/rfkill.md)
