# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_security_group
resource "aws_security_group" "main_sg" {
  name        = local.name
  description = "Settings for ${local.name}"

  # Main Security Rules
  ## Access within VPC
  ingress {
    description = "Access within VPC"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = local.default_vpc_cidr
  }

  # Custom Ingress Rules
  ## All Approved DB Team
  ingress {
    description = "All Approved DB Team"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.BARB_SG_WHITELIST_IP_OPEN_CIDR
  }

  # Assign Tags
  tags = local.tags
}