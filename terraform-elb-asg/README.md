Auto-Scaling Group and a Launch configuration AND  Elastic Load Balancer. Below are variables that need to be altered prior to use!!!

module "wordpress-oregon" {

source  = "nadirkakoev/aws/asg"

region = "us-west-2"

image_owner = "137112412989"            //AWS AMI

desired_capacity = 1

max_size = 1

min_size = 1

}

