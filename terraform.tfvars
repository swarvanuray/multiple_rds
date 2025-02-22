db_instances = {
  db1 = {
    allocated_storage      = 20
    engine                = "mysql"
    engine_version        = "5.7"
    instance_class        = "db.m5.large"
    username              = "myadmin"
    password              = "securepassword1"
    skip_final_snapshot   = true
    multi_az              = false
    backup_retention_period = 7
    storage_type          = "gp2"
    maintenance_window    = "sun:03:00-sun:04:00"
  
  },
  db2 = {
    allocated_storage      = 25
    engine                = "postgres"
    engine_version        = "16.3"
    instance_class        = "db.m5d.large"
    username              = "myadmin"
    password              = "securepassword2"
    skip_final_snapshot   = true
    multi_az              = false
    backup_retention_period = 14
    storage_type          = "gp2"
    maintenance_window    = "sun:04:00-sun:05:00"
    
  }
}

vpc_security_group_ids = ["sg-12345678"]
