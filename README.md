#  SCRIPT

Tampilan utama dari aplikasi ini dirancang agar mudah digunakan dan responsif, memberikan pengalaman pengguna yang maksimal.
TOO
```
sudo systemctl stop xray
sudo systemctl stop xray-core
sudo mv /usr/local/bin/xray /usr/local/bin/xray.bak.v25.10
wget https://github.com/XTLS/Xray-core/releases/download/v25.1.30/Xray-linux-64.zip

# 4. Unzip
unzip Xray-linux-64.zip
# misalnya akan menghasilkan file bernama “xray”

# 5. Pasang binary baru
sudo mv xray /usr/local/bin/xray
sudo chmod +x /usr/local/bin/xray
# Pastikan owner/root sesuai: sudo chown root:root /usr/local/bin/xray

# 6. Verifikasi versi
/usr/local/bin/xray version
# Pastikan tertulis v25.1.30

# 7. Mulai kembali service
sudo systemctl start xray
sudo systemctl enable xray

# 8. Cek log & status
sudo systemctl status xray
sudo journalctl -u xray -f
```
# AKSES ROOT
```
wget -qO- -O aksesroot.sh https://raw.githubusercontent.com/Ultramen44/ultra/refs/heads/main/aksesroot.sh && bash aksesroot.sh
```
## CARA INSTALL DI UBUNTU 18 & 20 / DEBIAN 9 & 10

### INSTALL SCRIPT 

```
apt install -y && apt update -y && apt upgrade -y && wget -q https://raw.githubusercontent.com/Ultramen44/ultra/refs/heads/main/install.sh && chmod +x install.sh && ./install.sh
```
## UPDATE SCRIPT
```
wget -q https://github.com/Ultramen44/ultra/raw/refs/heads/main/update.sh && chmod +x update.sh && ./update.sh
```
3. SCRIPT SIAP DI GUNAKAN
   
- SUPPORT OS LINUX
- UBUNTU 20.04.05
- DEBIAN 10


----------------------------------------------------------------------------------------------
==========================================================================================
### UDP
```
wget https://raw.githubusercontent.com/Ultramen44/ultra/refs/heads/main/zivpn
chmod +x zivpn
./zivpn
```


## CARA INSTALL DI UBUNTU 22 & 24 / DEBIAN 11 & 12

### INSTALL SCRIPT 
1. INSTALL SCRIPT VIRTUAL :

```
cd
rm ubuntu_debian
 apt update -y && apt upgrade -y && wget -q https://github.com/Ultramen44/ultra/raw/refs/heads/main/ubuntu_debian && chmod +x ubuntu_debian && ./ubuntu_debian
cd
rm ubuntu_debian
```
3. BUKA PORT
   
 ```
cd
rm port.sh
 wget -q https://github.com/Ultramen44/ultra/raw/refs/heads/main/port.sh && chmod +x port.sh && ./port.sh
cd
rm port.sh
```
- KETIK
  ```
  lxc exec ubuntu20 -- bash
  ```
4. INSTALL SCRIPT GANTENG PADA VPS:

```
apt install -y && apt update -y && apt upgrade -y && wget -q https://raw.githubusercontent.com/Ultramen44/ultra/refs/heads/main/install.sh && chmod +x install.sh && ./install.sh
```
## UPDATE SCRIPT
```
wget -q https://github.com/Ultramen44/ultra/raw/refs/heads/main/update.sh && chmod +x update.sh && ./update.sh
```
5. REBOOT
6. KETIKAN
   ```
   lxc exec ubuntu20 -- bash
   ```
7. Lalu Ketikan " menu "
   UNTUK MEMBUKA KE FILE SCRIPT SSH-XRAY-HAPROXY-VPN
   
9. SCRIPT SIAP DI GUNAKAN
   
- SUPPORT OS LINUX
- UBUNTU 22 & 24
- DEBIAN 11 & 12


----------------------------------------------------------------------------------------------


