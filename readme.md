



This module is developed for joindevops.com.we arecreating following resources.This module creates resources in first 2 AZ for HA.

* VPC
* Internet Gateway
* Internet and VPC attachment
* 2 Public Subnets
* 2 private Subnets
* 2 Database Subnets
* Elastic Ip
* NAT Gateway
* Public Route Table
* Private Route Table
* Database Route Table
* Route Table and Subnet  Associations
* Routes in all tables
* Peering required for user
* Routes of peering in requestor and acceptor VPC


### Inputs

* project_name (Required): User should mention their project name.
* environment (optional) : Default value is dev. Type is string.
* common tags (Required) : User should provide their tags related to their project.Type is map.
* vpc_cidr (Required): Default value is 10.0.0.0/16.Type is string.
* enable_dns_hostnames(optional): Default value is true.Type is bool.
* vpc_tags (optional): Default value is empty.Type is map.
* igw_tags (optional): Default value is empty.Type is map.
* public_subnet_cidrs(Required): User has to provide 2 valid subnet CIDR.
* public_subnet_cidr_tags(optional): Default value is empty.Type is map.
* private_subnet_cidrs(Required): User has to provide 2 VALID subnet CIDR.
* private_subnet_cidr_tags(Optional): Default value is empty.Type is map.
* database_subnet_cidrs(Required): User has to provide 2 valid subnet CIDR.
* database_subnet_cidrs_tags(Optional): Default value is empty.Type is map.
* nat_gateway_tags(optional): Default value is empty.Type is map.
* public_route_table_tags(Optional): Default value is empty.Type is map.
* private_route_table_tags(Optional): Default value is empty.Type is map.
* database_route_table_tags(Optional): Default value is empty.Type is map.
* vpc_peering (Optional): Default value is empty.Type is map.
* acceptor_vpc_id(optional): Default value is empty,Default VPC ID is taken.Type is map.
* vpc_peering_tags(optional): Default value is empty.Type is map.


#### Outputs
* vpc_id : VPC_ID
* public_subnet_ids: A List of public subnets IDs created.
* private_subnet_ids: A List of private subnets IDs created.
* database_subnet_ids: A List of database subnets IDs created.
* database_subnet_group_id : A database subnet group ID created.














