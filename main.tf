provider "aws" {
    region = "us-east-1"
}

module "vpc-dev" {
    source = "./modules/vpc"
    vpc_cidr_block = "10.1.0.0/16"
    name = "wipro-dev"
    common_tags = local.common_tags
}

module "vpc-prod" {
    source = "./modules/vpc"
    vpc_cidr_block = "10.2.0.0/16"
    name = "wipro-prod"
    common_tags = local.common_tags
}


module "vpc-staging" {
    source = "./modules/vpc"
    vpc_cidr_block = "10.3.0.0/16"
    name = "wipro-staging"
    common_tags = local.common_tags
}







output "vpc-dev-vpc-id" {
    value = module.vpc-dev.vpc_id
  
}


output "vpc-prod-vpc-id" {
    value = module.vpc-prod
  
}







locals {
  common_tags = {
        "Owner" = "Abdul",
        "cpmpany" = "wipro",
        "cost_allocation" = "app2"
        
    } 
}