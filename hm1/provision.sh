
sudo yum install epel-release -y
sudo yum install nginx -y
systemctl start firewalld
systemctl enable firewalld
sudo systemctl start nginx
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
sudo systemctl enable nginx