variable "aws_access_key" {
}

variable "aws_secret_key" {
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Region for thw AWS deployment."
}

variable "aws_availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "Availability Zone within selected Region."
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Cidr_block for the VPC."
}

variable "vpc_instance_tenancy" {
  type    = string
  default = "default"

  description = "Instance tenancy for the VPC."
}

variable "vpc_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-vpc"
  }
  description = "Tags for the VPC."
}

variable "gw_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-internet-gw"
  }
  description = "Tags for the GateWay."
}


variable "rt_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-rt"
  }
  description = "Tags for the Route Table."
}

variable "vpc_subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/16"

  description = "Cidr_block for the Subnet for the VPC."
}

variable "vpc_subnet_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-subnet-A"
  }
  description = "Tags of the Subnet for the VPC."
}

variable "sg_name" {
  type        = string
  default     = "my-terraform-security-group"
  description = "Name for the security group."
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-security-group"
  }
  description = "Tags for the security group."
}

variable "sg_ingress_rules" {
  type = any
  # ingress security group rules terraform
  default = [
    {
      "from_port" : "0",
      "to_port" : "0",
      "protocol" : "-1",
      "cidr_blocks" : ["0.0.0.0/0"] }
  ]
  description = "Ingress rules for the security group."
}

variable "sg_egress_rules" {
  type = any
  default = [
    {
      "from_port" : "0",
      "to_port" : "0",
      "protocol" : "-1",
      "cidr_blocks" : ["0.0.0.0/0"] }
  ]
  description = "Egress rules for the security group."
}

variable "network_interface_private_ips" {
  type        = any
  default = "10.0.0.50"
  description = "Private IPs for the Network Interface."
}

variable "instance_ami_id" {
  type        = string
  default     = "ami-0022f774911c1d690"
  description = "The id of the machine image (AMI) to use for the server."
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instace to create."
  default     = "t2.micro"
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name = "my-terraform-instance"
  }
  description = "Tags for the EC2 instance."
}
