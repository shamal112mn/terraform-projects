resource "aws_eip" "lb" {
  instance = "${aws_instance.centos6.id}"
  vpc      = true
}
