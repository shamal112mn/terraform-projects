output "vpc_id" {
  value = "${aws_vpc.WP_DB_vpc.id}"
}

output "public_subnet1" {
  value = "${aws_subnet.pub_sub_101.id}"
}

output "public_subnet2" {
  value = "${aws_subnet.pub_sub_102.id}"
}

output "public_subnet3" {
  value = "${aws_subnet.pub_sub_103.id}"
}

output "DB_subnet" {
  value = "${aws_instance.DB_Server.subnet_id}"
}

output "WordPress_subnet" {
  value = "${aws_instance.WordPressServer.subnet_id}"
}

output "tags" {
  value = "${var.tags}"
}
