resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-burnsville"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}
