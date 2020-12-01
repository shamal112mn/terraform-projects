resource "aws_route53_record" "www" {
  zone_id = "Z012122919JCP7K73N1S6"
  name    = "www.azatcloudsolution.net"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.web.public_ip}"]
}
