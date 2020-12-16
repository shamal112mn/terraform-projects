data "terraform_remote_state" "main" {
  backend = "s3"
  config = {
    bucket = "test-backet-terraform-s3-a1"
    key = "path/remote-state"
    region = "us-east-1"
  }
}

output "full_list" {
  value = "${data.terraform_remote_state.main.outputs.*}"
}

 

