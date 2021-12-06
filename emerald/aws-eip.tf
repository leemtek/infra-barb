resource "aws_eip_association" "emerald_eip_assoc" {
  instance_id = aws_instance.main_ec2.id
  public_ip   = var.emerald_eip
}

