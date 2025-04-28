terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.0"
    }
  }
    backend "s3" {
    bucket = "devops-30s"
    key    = "terrform-for-each"
    region = "us-east-1"
    dynamodb_table = "devops-30s"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
