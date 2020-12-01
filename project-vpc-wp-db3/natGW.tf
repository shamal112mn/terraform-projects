resource "aws_nat_gateway" "nat_GW" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.private_subnet1.id}"
  tags          = "${var.tags}"
}

resource "aws_eip" "nat" {
  vpc  = true
  tags = "${var.tags}"
}
