provider "aws" {

  region = var.aws_region

}

module "vpc" {

  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr

  vpc_name = var.vpc_name

}

module "subnet" {

  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id

  subnet_cidr = var.subnet_cidr

  az = var.az

  subnet_name = var.subnet_name

}

module "security_group" {

  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id

  sg_name = var.sg_name

  sg_description = var.sg_description

}

