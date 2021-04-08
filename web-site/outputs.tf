output "db_password" {
    value = module.database.db_config.password
}

output "db_config" {
    value = {
        user =      module.database.db_config.user
        password =  module.database.db_config.password
        database =  module.database.db_config.database
        hostname =  module.database.db_config.hostname
        port =      module.database.db_config.port
    }
}

output "lb_dns_name" {
    value = module.asg.lb_dns_name
}












