variable "aws_region" {

  type = string

  default = "ap-south-1"

}

variable "vpc_cidr" {

  type = string

  default = "10.0.0.0/16"

}

variable "vpc_name" {

  type = string

  default = "terraform-module-vpc"

}
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "az" {
  default = "ap-south-1a"
}

variable "subnet_name" {
  default = "module-public-subnet"
}

variable "sg_name" {

  type = string

  default = "web-sg"

}

variable "sg_description" {

  type = string

  default = "Allow SSH Access"

}

variable "ami_id" {

  type = string

  default = "YOUR_WORKING_AMI"

}

variable "instance_type" {

  type = string

  default = "t2.micro"

}

variable "instance_name" {

  type = string

  default = "ami-0685bcc683dadb6b9"

}