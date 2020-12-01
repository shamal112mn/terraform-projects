# packer

### Copy and paste commands:
```

To run Jenkins:
   packer build -var-file vars/jenkins_vars.json  tools/jenkins.json

To run r1soft:
   cd to tools then packer build r1soft.json
   use security-group port: http:80, ssh:22, for agents:1167

To run Wordpress:
   packer build -var-file vars/wordpress_vars.json tools/wordpress.json 

   use security-group port: http:80 and ssh:22

To run MariaDB:
   packer build  tools/MariaDB.json 
   use security-group port: mariadb:3306 and ssh:22
