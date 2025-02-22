provider "aws" {
  region = "us-east-1" # Change to your desired region
}

# Create RDS Instances
resource "aws_db_instance" "this" {
  for_each = var.db_instances

  allocated_storage      = each.value.allocated_storage
  engine                = each.value.engine
  engine_version        = each.value.engine_version
  instance_class        = each.value.instance_class
  username              = each.value.username
  password              = each.value.password
  skip_final_snapshot   = each.value.skip_final_snapshot
  multi_az              = each.value.multi_az
  backup_retention_period = each.value.backup_retention_period
  storage_type          = each.value.storage_type
  maintenance_window    = each.value.maintenance_window

  publicly_accessible = false # Set to true if you want the DB to be publicly accessible
  storage_encrypted   = true  # Enable storage encryption
}

# CloudWatch Alarms for RDS Instances
