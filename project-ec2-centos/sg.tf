resource "aws_security_group" "hw2_part2" {
  name        = "hw2_part2"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "inbound ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
