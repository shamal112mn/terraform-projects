module "VPC" {
  source              = "../"                        # "/vpc-WordPress-MariaDB/aws"
  region              = "${var.region}"
  cidr_block          = "${var.cidr_block }"
  private_cidr_block1 = "${var.private_cidr_block1}"
  private_cidr_block2 = "${var.private_cidr_block2}"
  private_cidr_block3 = "${var.private_cidr_block3}"
  public_cidr_block1  = "${var.public_cidr_block1}"
  public_cidr_block2  = "${var.public_cidr_block2}"
  public_cidr_block3  = "${var.public_cidr_block3}"
  instance_type_wp    = "${var.instance_type_wp}"
  instance_type_db    = "${var.instance_type_db}"

  tags = "${var.tags}"
}
