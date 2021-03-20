sudo apt -y --force-yes install ca-certificates apt-transport-https
sudo apt -y install wget
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt -y update
sudo apt -y install php5.6 
sudo apt -y install nginx
sudo sed -i 's/index index.html index.htm index.nginx-debian.html/index index.nginx-debian.html/g' /etc/nginx/sites-available/default
sudo systemctl restart nginx
sudo apt -y install apache2
sudo sed -i 's/Listen 80/Listen 8888/g' /etc/apache2/ports.conf
sudo systemctl restart apache2
sudo apt -y install vim htop tmux
sudo iptables -A INPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8888 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --sport 8888 -m conntrack --ctstate ESTABLISHED -j ACCEPT

