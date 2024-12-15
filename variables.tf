### project ###
variable "project_name" {
    type = string 
}

variable "environment" {
    type = string 
    default = "dev"
}

variable "common_tags" {
    type = map
  
}

### vpc ###

variable "cidr" {
    type = string 
    default = "10.0.0.0/16"

}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
  
}

### IGW tags ###

variable "igw_tags" {
    type = map
    default = {}
}


variable "public_subnet_cidrs" {
    type = list 
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide valid 2 public sunet cidr"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}


variable "private_subnet_cidrs" {
    type = list 
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide valid 2 public sunet cidr"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}


variable "database_subnet_cidrs" {
    type = list 
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide valid 2 public sunet cidr"
    }
}

variable "database_subnet_cidrs_tags" {
    type = map
    default = {}
}



### Nat_Gateway ###

variable "nat_gateway_tags" {
    type = map
    default = {}
  
}


### Public Route Table ###

variable "public_route_table_tags" {
    type = map
    default = {}
  
}

variable "private_route_table_tags" {
    type = map
    default = {}
  
}

variable "database_route_table_tags" {
    type = map
    default = {}
}

variable "vpc_peering" {
    type =bool
    default = false
  
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}

variable "vpc_peering_tags" {
    type = map
    default={}
  
}

variable "aws_subnet_group_tags" {
    type = map
    default = {}
}