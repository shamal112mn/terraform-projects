resource "aws_instance" "centos6" {
  ami                         = "ami-e3fdd999"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.deployer.key_name}"
  vpc_security_group_ids      = ["${aws_security_group.hw2_part2.id}"]
  availability_zone           = "us-east-1a"

  tags = {
    Name = "centos-6"
  }
}

resource "aws_iam_instance_profile" "adminrole" {
  name = "adminrole"
  role = "${aws_iam_role.admin_role.name}"
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdi"
  volume_id   = "${aws_ebs_volume.ebs100.id}"
  instance_id = "${aws_instance.centos6.id}"
}
