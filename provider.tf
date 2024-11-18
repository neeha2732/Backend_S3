terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
  }

  backend "s3" {
    bucket          = "tfstate-mybucket-12-12"
    key             = "state/terraform.tfstate"
    region          = "eu-central-1"
    encrypt         = true
    dynamodb_table  = "tfstate-dynamodb-table"
  }
}

provider "aws" {
  region = "eu-central-1"
}
