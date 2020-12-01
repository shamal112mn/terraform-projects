sudo mv /tmp/remote/r1soft.repo /etc/yum.repos.d/      
sudo yum install serverbackup-enterprise-agent -y    
sudo /etc/init.d/cdp-server restart
sudo serverback-setup  -get-key http://54.80.201.103/:80