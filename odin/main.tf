# =================================================================
# ## Project Variables
# =================================================================
locals {
  name             = var.BARB_ODIN_INSTANCE_NAME
  region           = var.BARB_REGION
  profile          = var.BARB_PROFILE
  default_vpc_id   = var.BARB_DEFAULT_VPC_ID
  default_vpc_cidr = var.BARB_DEFAULT_VPC_CIDR
  # backend_bucket    = var.BARB_BUCKET
  # backend_key       = var.BARB_ODIN_STATE_KEY
  tags = {
    Owner       = "${var.BARB_ODIN_TAG_OWNER}"
    Family      = "${var.BARB_ODIN_TAG_FAMILY}"
    Environment = "${var.BARB_ODIN_TAG_ENV}"
  }
}

# =================================================================
# Main Settings
# =================================================================
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
  profile = local.profile
  region  = local.region
}

