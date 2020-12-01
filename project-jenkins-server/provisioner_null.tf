resource "null_resource" "remote" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    source      = "remote"
    destination = "/tmp/"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    inline = [
      "sudo chmod +x /tmp/remote/userdata.sh",
      "sudo /tmp/remote/userdata.sh",
    ]
  }
}

# provisioner "remote-exec" {
#   connection {
#     type        = "ssh"
#     user        = "centos"
#     private_key = "${file("~/.ssh/id_rsa")}"
#     host        = "${aws_instance.centos.public_ip}"
#   }


#  inline = [
#     "sudo yum install wget -y",
#     "wget http://mirrors.jenkins-ci.org/redhat/jenkins-2.266-1.1.noarch.rpm",
#     "sudo yum localinstall jenkins-2.266-1.1.noarch.rpm -y",
#     "sudo yum upgrade -y",
#     "sudo yum install jenkins -y",
#     "sudo yum install java-1.8.0-openjdk-devel -y",
#     "sudo systemctl start jenkins",
#     "sudo systemctl enable jenkins",
#   ]
# }

