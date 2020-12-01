resource "aws_route53_record" "jenkins" {
  zone_id = "${var.route53_zone_id}"
  name    = "${var.route53_name}"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.centos.public_ip}"]
}
