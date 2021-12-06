resource "aws_instance" "main_ec2" {
  ami                    = var.ami_id
  instance_type          = var.emerald_ec2_config["instance_type"]
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  user_data              = data.template_file.emerald_user_data.rendered

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }

  tags = {
    Name   = var.emerald_ec2_config["instance_name"]
    Family = var.general_settings["tag_family"]
  }

  volume_tags = {
    Name   = var.emerald_ec2_config["instance_name"]
    Family = var.general_settings["tag_family"]
  }
}


