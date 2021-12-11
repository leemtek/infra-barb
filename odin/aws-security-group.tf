# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_security_group
resource "aws_db_security_group" "main_sg" {
  name        = local.name
  description = "Settings for ${local.name}"

  # Main Security Rules
  ## Access within VPC
  ingress {
    cidr = local.default_vpc_cidr
  }

  # Custom Ingress Rules
  ## All Approved DB Team
  ingress {
    cidr = var.BARB_SG_WHITELIST_IP_DUANE
  }

  # Assign Tags
  tags = local.tags
}