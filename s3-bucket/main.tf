provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = var.region
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket_name
  acl = var.acl_bucket
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


