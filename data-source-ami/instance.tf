resource "aws_instance" "web" {
  ami = "${data.aws_ami.centos.id}"

  # availability_zone           = "${data.aws_availability_zones.available.names[3]}"
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.deployer.key_name}"
   
  security_groups = [ "${aws_security_group.allow_ssh.name}" ]   # will delete and recreate
  #vpc_security_groups_ids = [ "${aws_security_group.allow_ssh.id}" ] # will attach sg without recreating resource
  user_data                   = "${file("userdata.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
  availability_zone           = "us-east-1a"
  tags = {
    Name = "web-ec2-user"
  }
}
