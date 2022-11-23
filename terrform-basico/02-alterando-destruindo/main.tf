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
  bucket = "my-tf-test-bucket-12123129102934901"

  tags = {
    Name        = "Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Henry Hiraki"
    UpdatedAt   = "2022-11-11"
  }
}