# =================================================================
# ## Project Variables
# =================================================================
locals {
  name           = var.BARB_ODIN_INSTANCE_NAME
  region         = var.BARB_REGION
  profile        = var.BARB_PROFILE
  default_vpc_id = var.BARB_DEFAULT_VPC_ID

  # Security Group
  default_vpc_cidr = var.BARB_SG_WHITELIST_VPC_CIDR


  # backend_bucket    = var.BARB_BUCKET
  # backend_key       = var.BARB_ODIN_STATE_KEY

  # RDS
  rds_allocated_storage    = var.BARB_ODIN_ADI_ALLOCATED_STORAGE
  rds_engine               = var.BARB_ODIN_ADI_ENGINE
  rds_engine_version       = var.BARB_ODIN_ADI_ENGINE_VERSION
  rds_instance_class       = var.BARB_ODIN_ADI_INSTANCE_CLASS
  rds_username             = var.BARB_ODIN_ADI_USERNAME
  rds_password             = var.BARB_ODIN_ADI_PASSWORD
  rds_parameter_group_name = var.BARB_ODIN_ADI_PARAMETER_GROUP_NAME
  rds_skip_final_snapshot  = var.BARB_ODIN_ADI_SKIP_FINAL_SNAPSHOT

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

