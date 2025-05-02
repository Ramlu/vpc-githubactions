terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.9.0"
    }
  }
  required_version = "~> 1.10.0"

  backend "s3" {
    bucket = "terraformbucket-1428"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
  profile = "dev-profile"
}