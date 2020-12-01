resource "aws_key_pair" "bastionkey" {
  key_name   = "bastionkey_pub"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
