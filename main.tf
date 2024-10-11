terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

terraform {
    backend "s3" {}
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-miguel-munoz"

  tags = {
    owner        = "miguel.munoz"
    bootcamp = "devops"
  }
}