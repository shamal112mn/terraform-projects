output "Public IP" {
  value = "${aws_instance.web.public_ip}"
}

output "DNS" {
  value = "${aws_instance.web.public_dns}"
}

output "Keyname" {
  value = "${aws_key_pair.deployer.key_name}"
}

output "AZ" {
  value = "${aws_instance.web.availability_zone}"
}
