data "template_file" "init" {
  template = "${file("${path.module}/userdata.sh")}"
}