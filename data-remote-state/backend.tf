terraform{
  backend "s3"{
    bucket = "test-backet-terraform-s3-a1"
    key = "path/remote-state"
    region = "us-east-1"
  }
}