resource "aws_instance" "centos" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "t2.medium"
  vpc_security_group_ids = ["${aws_security_group.jenkins_sg.id}"]
  key_name               = "${aws_key_pair.bastionkey.key_name}"
  
  root_block_device = [{
    volume_size = "30"

    delete_on_termination = true
  }]

  tags = {
    Name = "jenkins-server"
  }
}

output "Public IP" {
  value = "${aws_instance.centos.public_ip}"
}
