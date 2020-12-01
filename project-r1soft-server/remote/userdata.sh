sudo mv /tmp/remote/r1soft.repo /etc/yum.repos.d/      
sudo yum install serverbackup-enterprise -y      
sudo serverbackup-setup --user admin --pass r1soft --http-port 80
sudo /etc/init.d/cdp-server restart