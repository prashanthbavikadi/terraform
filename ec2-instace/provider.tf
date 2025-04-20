terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.0"
    }
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
