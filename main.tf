
resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine             = "postgres"
  engine_version     = var.engine_version
  instance_class     = var.instance_class
  db_name               = var.db_name
  username           = var.db_username
  password           = var.db_password
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.default.id]
  multi_az           = var.multi_az
  storage_type       = var.storage_type
  backup_retention_period = var.backup_retention_period
  tags = {
    Name = var.db_name
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_name}-subnet-group"
  }
}

