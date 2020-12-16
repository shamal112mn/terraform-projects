#!/bin/bash 
sudo yum install httpd -y
sudo yum install  telnet -y 
sudo systemctl start httpd 
sudo systemctl enable httpd 
