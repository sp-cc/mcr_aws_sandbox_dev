# Generic Variables
global = {
  owners      = "spacelift-crew"
  application = "spacelift-sandbox"
  environment = "dev"
  aws_region  = "ap-southeast-2"
  region      = "apse2"

  network = {
    vpc_cidr_block = "10.64.80.0/21"
    vpc_availability_zones = [
      "ap-southeast-2a",
      "ap-southeast-2b"
    ]
    vpc_public_subnets = [
      "10.64.80.0/24",
      "10.64.81.0/24"
    ]
    vpc_private_subnets = [
      "10.64.82.0/24",
      "10.64.83.0/24"
    ]
    vpc_database_subnets = [
      "10.64.84.0/24",
      "10.64.85.0/24"
    ]

    vpc_create_database_subnet_group       = true
    vpc_create_database_subnet_route_table = true
    vpc_enable_nat_gateway                 = false
    vpc_single_nat_gateway                 = false

    # peering = {
    #   requester_vpc_id          = "vpc-020d0571e3d844bb1"
    #   accepter_vpc_id           = "vpc-039b8a1c8cfdabb3c"
    #   requester_subnets_ids     = ["subnet-0da0988416a5dcffd", "subnet-0282d3c310141d3a4"]
    #   accepter_subnets_ids      = ["subnet-067f4a0234341cf36", "subnet-0391af37418bf90a9"]
    #   requester_rts_ids         = []
    #   accepter_rts_ids          = []
    #   auto_accept_peering       = true
    #   requester_dns_resolution  = false
    #   accepter_dns_resolution   = false
    #   from_requester            = true
    #   from_requester_associated = false
    #   from_accepter             = true
    #   from_accepter_associated  = false
    # }
  }
  compute = {
    ec2 = {
      instance_type          = "t3.micro"
      private_instance_count = 1
    }
  }
  database = {
    db1 = {
      db_name                = "webappdb"
      db_instance_identifier = "webappdb"
      db_username            = "dbadmin"
    }
  }
  eks = {
    # ## EKS  ##
    # cluster_name                         = "eksdemo1"
    # cluster_service_ipv4_cidr            = "172.20.0.0/16"
    # cluster_version                      = "1.26"
    # cluster_endpoint_private_access      = false
    # cluster_endpoint_public_access       = true
    # cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]
  }

  #developer = true
}
