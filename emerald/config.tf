terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"

  # Contents stored at backend_s3.tfvars
  backend "s3" {}
}

provider "aws" {
  profile = var.general_settings["profile"]
  region  = var.general_settings["region"]
}

