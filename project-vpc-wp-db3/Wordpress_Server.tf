resource "aws_instance" "WordPressServer" {
  ami                         = "${data.aws_ami.centos.id}"
  associate_public_ip_address = true
  instance_type               = "${var.instance_type_wp}"
  key_name                    = "${aws_key_pair.Bastion.key_name}"
  vpc_security_group_ids      = ["${aws_security_group.wordpress_server.id}"]
  subnet_id                   = "${aws_subnet.pub_sub_102.id}"

   root_block_device = [{
    delete_on_termination = true
  }]

  tags {
    Name = "WordPress-Server"
  }
}
