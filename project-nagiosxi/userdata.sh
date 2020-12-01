#!/bin/bash
sudo yum install wget -y
cd /tmp
sudo wget https://assets.nagios.com/downloads/nagiosxi/xi-latest.tar.gz
sudo tar xzf xi-latest.tar.gz
cd nagiosxi

yes | ./fullinstall