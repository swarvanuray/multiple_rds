variable "db_instances" {
  description = "A map of RDS instances to create"
  type = map(object({
    allocated_storage      = number
    engine                = string
    engine_version        = string
    instance_class        = string
    username              = string
    password              = string
    skip_final_snapshot   = bool
    multi_az              = bool
    backup_retention_period = number
    storage_type          = string
    maintenance_window    = string
  
    
  }))
}



variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs to associate with the RDS instance"
  type        = list(string)
}
