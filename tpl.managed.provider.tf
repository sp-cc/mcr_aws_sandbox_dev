terraform {
  required_version = "~> 1.5.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    # tfe = {
    #   source  = "hashicorp/tfe"
    #   version = "~> 0.51.0"
    # }
    # azuredevops = {
    #   source  = "microsoft/azuredevops"
    #   version = "~> 0.11.0"
    # }
    # azuread = {
    #   source  = "hashicorp/azuread"
    #   version = "~> 2.47.0"
    # }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.4"
    }
  }
}

# provider "tfe" {
#   # Configuration options
#   token = var.tf_token
# }

# provider "azuredevops" {
#   # Configuration options
#   org_service_url       = "https://dev.azure.com/${var.azuredevops_settings.organization}"
#   personal_access_token = var.azuredevops_personal_token
# }

# provider "azuread" {
#   # Configuration options
#   tenant_id     = var.azuread.tenant_id
#   client_id     = var.azuread.client_id
#   client_secret = var.azuread_client_secret
# }

provider "aws" {
  # Configuration options
  region = var.aws_region
  # access_key = var.aws.aws_access_key
  # secret_key = var.aws_secret_key
}

# provider "aws" {
#   alias      = "accepter"
#   region     = var.aws.aws_region                  #"ap-southeast-2"
#   access_key = var.aws.aws_security_prd_access_key #var.aws_spoke_access_key
#   secret_key = var.aws_security_prd_secret_key     #var.aws_spoke_secret_key
# }
