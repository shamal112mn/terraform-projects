output "vpc_id" {
  value = "${module.VPC.vpc_id}"
}

output "public_subnet1" {
  value = "${module.VPC.public_subnet1}"
}

output "public_subnet2" {
  value = "${module.VPC.public_subnet2}"
}

output "public_subnet3" {
  value = "${module.VPC.public_subnet3}"
}

output "DB_subnet" {
  value = "${module.VPC.DB_subnet}"
}

output "WordpressServer_subnet" {
  value = "${module.VPC.WordPress_subnet}"
}

output "tags" {
  value = "${module.VPC.tags}"
}
