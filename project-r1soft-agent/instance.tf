resource "aws_instance" "centos" {
  ami                    = "${data.aws_ami.centos.id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.r1soft_agent_sg.id}"]
  key_name               = "${aws_key_pair.bastionkey_agent.key_name}"

  root_block_device = [{
    volume_size = "30"

    delete_on_termination = true
  }]

  tags = {
    Name = "agent"
  }
}

output "Public IP" {
  value = "${aws_instance.centos.public_ip}"
}

