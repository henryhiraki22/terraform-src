terraform {
  required_version = "1.0.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.39.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12123129102934"
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
    Managedby   = "terraform"
  }
}