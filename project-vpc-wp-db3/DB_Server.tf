resource "aws_instance" "DB_Server" {
  ami                         = "${data.aws_ami.centos.id}"
  instance_type               = "${var.instance_type_db}"
  key_name                    = "${aws_key_pair.Bastion.key_name}"
  vpc_security_group_ids      = ["${aws_security_group.db_SG.id}"]
  subnet_id                   = "${aws_subnet.private_subnet1.id}"
  user_data              = "${base64encode(data.template_file.init.rendered)}"

  root_block_device = [{
    delete_on_termination = true
  }]

  tags = {
    Name = "DB-Server"
  }
}

