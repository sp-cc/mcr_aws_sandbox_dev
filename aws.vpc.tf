module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.7.1"

  name            = "vpc-${var.global.application}-${var.global.environment}-${var.global.region}"
  cidr            = var.global.network.vpc_cidr_block
  azs             = var.global.network.vpc_availability_zones
  public_subnets  = var.global.network.vpc_public_subnets
  private_subnets = var.global.network.vpc_private_subnets

  map_public_ip_on_launch = true

  ## Database Subnets
  database_subnets                       = var.global.network.vpc_database_subnets
  create_database_subnet_group           = var.global.network.vpc_create_database_subnet_group
  create_database_subnet_route_table     = var.global.network.vpc_create_database_subnet_route_table
  create_database_internet_gateway_route = true
  create_database_nat_gateway_route      = false

  ### NAT Gateways - Outbound Communication
  enable_nat_gateway = var.global.network.vpc_enable_nat_gateway
  single_nat_gateway = var.global.network.vpc_single_nat_gateway

  ## VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = local.tags

  ## VPC Flow Logs (Cloudwatch log group and IAM role will be created)
  enable_flow_log                                 = true
  create_flow_log_cloudwatch_log_group            = true
  create_flow_log_cloudwatch_iam_role             = true
  flow_log_max_aggregation_interval               = 60
  flow_log_cloudwatch_log_group_retention_in_days = 7

  ### Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}

