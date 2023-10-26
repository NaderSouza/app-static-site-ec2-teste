# PROVIDER
terraform {

  required_version = "~> 1.5.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

    backend "s3" {
      bucket         = "teste-cp1"
      key            = "terraform.tfstate"
      dynamodb_table = "teste-cp1"
      region         = "us-east-1"
    }

}
