resource "aws_route53_record" "www" {
  zone_id = "your zone id"
  name    = "www.azatcloudsolution.net"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.web.public_ip}"]
}
