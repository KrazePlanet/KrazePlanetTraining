# Day42 — How to Find Blind Time Based SQLI:
[![Day42 — How to Find Blind Time Based SQLI)](https://img.youtube.com/vi/nHf3P-infDM/maxresdefault.jpg)](https://youtu.be/nHf3P-infDM)

## Resources
```yaml
wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.30/xampp-linux-x64-8.0.30-0-installer.run

chmod +x xampp-linux-x64-*-installer.run

sudo ./xampp-linux-x64-8.0.30-0-installer.run

sudo /opt/lampp/lampp start

sudo /opt/lampp/lampp status

apt install mysql-client-core-8.0

cd /opt/lampp/htdocs/
git clone https://github.com/KrazePlanet/KrazePlanetLabs.git --depth 1

sudo sed -i 's/Require local/Require all granted/g' /opt/lampp/etc/extra/httpd-xampp.conf

sudo /opt/lampp/lampp restart

mysql -u root --socket=/opt/lampp/var/mysql/mysql.sock -e "DROP DATABASE IF EXISTS KrazePlanetLabs_DB; CREATE DATABASE KrazePlanetLabs_DB;"

mysql -u root --socket=/opt/lampp/var/mysql/mysql.sock KrazePlanetLabs_DB < <(cat /opt/lampp/htdocs/KrazePlanetLabs/sqli/*/*.sql)
```

- https://github.com/KrazePlanet/KrazePlanetLabs
- https://github.com/rix4uni/WordList/blob/main/payloads/sqli/fav-time-based-sqli.txt
- https://github.com/rix4uni/pvreplace
- https://github.com/rix4uni/gosqli
