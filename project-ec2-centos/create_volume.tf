resource "aws_ebs_volume" "ebs100" {
  availability_zone = "us-east-1a"
  size              = 100

  tags = {
    Name = "centos6-ebs"
  }
}
