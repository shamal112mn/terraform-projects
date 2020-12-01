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
