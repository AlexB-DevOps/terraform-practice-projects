variable "namespace"{
    description = "The project namespace to use for unique resource naming" 
    type = string
}

variable "ssh_keypair" {
    description = "Optional keypair to ssh into EC2 instance"
    default = null
    type = string
}

variable "region" {
    description = "AWS region"
    default = "us-east-1"
    type = string
}