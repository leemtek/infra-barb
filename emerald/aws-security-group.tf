resource "aws_security_group" "main_sg" {
  name        = var.general_settings["tag_family"]
  description = "Settings for ${var.general_settings["tag_family"]}"

  # Main Security Rules
  ## Server secure Websites
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.open_cidr_blocks
  }

  ## Server Websites
  ingress {
    description = "Web Server 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.open_cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.open_cidr_blocks
    ipv6_cidr_blocks = var.open_cidr_blocks_ipv6
  }

  tags = {
    Name   = var.emerald_ec2_config["instance_name"]
    Family = var.general_settings["tag_family"]
  }

  # Custom Ingress Rules
  ## All Approved SSH
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.sg_ssh
  }

  ingress {
    description      = "SSH for Other Group IDs"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups  = var.sg_ssh_sgid
  }
}