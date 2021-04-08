module "networking" {
    source = "../modules/networking"
    namespace = var.namespace
}

module "database" {
    source = "../modules/database"
    namespace = var.namespace
    vpc = module.networking.vpc
    sg = module.networking.sg
}

module "asg" {
    source = "../modules/autoscaling_group"
    namespace = var.namespace
    ssh_keypair = var.ssh_keypair
    vpc = module.networking.vpc
    sg = module.networking.sg
    db_config = module.database.db_config
}