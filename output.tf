output "rds_endpoints" {
  description = "The endpoints of the RDS instances"
  value = {
    for k, v in aws_db_instance.this : k => v.endpoint
  }
}

output "rds_ids" {
  description = "The IDs of the RDS instances"
  value = {
    for k, v in aws_db_instance.this : k => v.id
  }
}

