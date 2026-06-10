output "vpc_id" {

  value = module.vpc.vpc_id

}

output "vpc_cidr" {

  value = module.vpc.vpc_cidr

}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "security_group_id" {

  value = module.security_group.security_group_id

}

output "instance_id" {

  value = module.ec2.instance_id

}

output "public_ip" {

  value = module.ec2.public_ip

}