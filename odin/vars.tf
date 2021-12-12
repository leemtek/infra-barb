# =================================================================
# Main Settings
# =================================================================
variable "BARB_PROFILE" {
  type        = string
  description = "Local env variable for AWS CLI profile."
}

variable "BARB_REGION" {
  type        = string
  description = "Local env variable for the region used."
}

# variable "BARB_BUCKET" {
#   type          = string
#   description   = "Local env variable for S3 bucket name."
# }

# variable "BARB_ODIN_STATE_KEY" {
#   type          = string
#   description   = "Local env variable for where the state should be saved in S3."
# }

variable "BARB_DEFAULT_VPC_ID" {
  type        = string
  description = "Local env variable for the default VPC ID."
}

variable "BARB_DEFAULT_VPC_CIDR" {
  type        = string
  description = "Local env variable for the default VPC CIDR."
}


# =================================================================
# RDS Settings
# =================================================================
variable "BARB_ODIN_INSTANCE_NAME" {
  type        = string
  description = "Local env variable for the name of the RDS instance."
}

variable "BARB_ODIN_TAG_OWNER" {
  type        = string
  description = "Local env variable for the owner tag."
}

variable "BARB_ODIN_TAG_FAMILY" {
  type        = string
  description = "Local env variable for the family tag."
}

variable "BARB_ODIN_TAG_ENV" {
  type        = string
  description = "Local env variable for the Env tag."
}

## Security Group
variable "BARB_SG_WHITELIST_IP_DUANE" { type = string }

## Settings: aws_db_instance
variable "BARB_ODIN_ADI_ALLOCATED_STORAGE" { type = number }
variable "BARB_ODIN_ADI_ENGINE" { type = string }
variable "BARB_ODIN_ADI_ENGINE_VERSION" { type = string }
variable "BARB_ODIN_ADI_INSTANCE_CLASS" { type = string }
variable "BARB_ODIN_ADI_USERNAME" { type = string }
variable "BARB_ODIN_ADI_PASSWORD" { type = string }
variable "BARB_ODIN_ADI_PARAMETER_GROUP_NAME" { type = string }
variable "BARB_ODIN_ADI_SKIP_FINAL_SNAPSHOT" { type = bool }
variable "BARB_SG_WHITELIST_IP_OPEN_CIDR" { type = list(string) }
variable "BARB_SG_WHITELIST_VPC_CIDR" { type = list(string) }
