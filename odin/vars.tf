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

