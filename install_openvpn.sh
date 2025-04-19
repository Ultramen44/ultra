bash
#!/bin/bash

clear

Menghapus direktori OpenVPN
rm -rf /etc/openvpn

Membuat direktori OpenVPN
mkdir -p /etc/openvpn

Mengunduh file konfigurasi OpenVPN
wget -q -O /etc/openvpn/vpn.zip "https://raw.githubusercontent.com/Ultramen44/ultra/main/ssh/vpn.zip"

Mengekstrak file konfigurasi OpenVPN
unzip -d /etc/openvpn/ /etc/openvpn/vpn.zip

Menghapus file zip
rm -f /etc/openvpn/vpn.zip

Mengatur kepemilikan direktori OpenVPN
chown -R root:root /etc/openvpn/server/easy-rsa/

Mengkonfigurasi OpenVPN
cd /etc/openvpn/server
./easyrsa build-ca nopass
./easyrsa gen-dh
./easyrsa build-server-full server nopass

Mengatur konfigurasi OpenVPN
cat > /etc/openvpn/server.conf <<EOF
port 1194
proto udp
dev tun
ca ca.crt
cert server.crt
key server.key
dh dh2048.pem
topology subnet
server 10.8.0.0 255.255.255.0
EOF

Mengaktifkan dan memulai layanan OpenVPN
systemctl start openvpn@server
systemctl enable openvpn@server

Mengatur konfigurasi klien OpenVPN
cat > /etc/openvpn/client.ovpn <<EOF
client
dev tun
proto udp
remote $MYIP 1194
resolv-retry infinite
nobind
persist-key
persist-tun
auth-user-pass
comp-lzo
verb 3
EOF

Mengganti alamat IP pada file konfigurasi klien
MYIP=$(wget -qO- ipinfo.io/ip)
sed -i "s/xxxxxxxxx/$MYIP/g" /etc/openvpn/client.ovpn

echo "Instalasi OpenVPN berhasil"