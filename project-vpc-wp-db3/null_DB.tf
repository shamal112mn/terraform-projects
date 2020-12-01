# resource "null_resource" "DB_VM" {
#    triggers = {
#     always_run = "${timestamp()}"
#     }   
#   provisioner "remote-exec" {
#     connection {
#     type     = "ssh"
#     user     = "centos"
#     private_key = "${file("~/.ssh/id_rsa")}"
#     host     = "${aws_instance.DB_Server.public_ip}"
#   }
#     inline = [
#       "sudo yum install mariadb-server mariadb -y",
#       "sudo systemctl start mariadb ",
#       "sudo systemctl enable mariadb",
#     ]
#   }
# }