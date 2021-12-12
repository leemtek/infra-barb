resource "aws_db_instance" "main_db" {
  allocated_storage      = local.rds_allocated_storage
  engine                 = local.rds_engine
  engine_version         = local.rds_engine_version
  identifier             = local.name
  instance_class         = local.rds_instance_class
  name                   = local.name
  username               = local.rds_username
  password               = local.rds_password
  parameter_group_name   = local.rds_parameter_group_name
  skip_final_snapshot    = local.rds_skip_final_snapshot
  tags                   = local.tags
  vpc_security_group_ids = [aws_security_group.main_sg.id]
}

