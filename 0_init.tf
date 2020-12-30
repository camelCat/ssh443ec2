terraform {
    required_providers {
      aws = {
          version = ">= 3.0"
          source  = "hashicorp/aws"
      }
    }
}

provider "aws" {
  profile = "default"
  region = "eu-north-1"
}
