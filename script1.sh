
echo_something () {
    echo $1
}

# Updating packages
echo_info UPDATES-BEING-INSTALLED
sudo apt-get update

# Setting up the cli
echo_info PATH-SET-LINUX
PATH=/usr/bin:/usr/local/sbin:/sbin:/bin:/usr/sbin:/usr/local/bin:/opt/aws/bin:/root/bin

#installing node server
sudo apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\
sudo apt-get install nodejs

#installing mysql server
#sudo apt install mysql-server -y
#sudo systemctl start mysql.service
#sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Elroy@17665'";
#systemctl status mysql.service

sudo npm install -g pm2

mkdir /home/ubuntu/webapp
chown ubuntu:ubuntu /home/ubuntu/webapp
