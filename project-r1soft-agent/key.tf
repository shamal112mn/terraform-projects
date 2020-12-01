resource "aws_key_pair" "bastionkey_agent" {
  key_name   = "bastionkey_pub_agent"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
