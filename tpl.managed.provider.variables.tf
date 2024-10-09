# #------------------------------------------------------------------------------#
# # Terraform Workspace Variables
# #------------------------------------------------------------------------------#
# variable "tf_settings" {
#   description = "Terraform Workspace Settings"
#   type = object({
#     tf_org          = string
#     tf_sso_enabled  = bool
#     tf_workspace_id = string
#     tf_admin_team   = string
#   })
#   default = null
# }
# variable "tf_token" {
#   description = "Terraform Cloud Access Token"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "tf_devops_oauth_token" {
#   description = "Terraform VCS Azure DevOps OAuth Token"
#   type        = string
#   sensitive   = true
#   default     = null
# }
#------------------------------------------------------------------------------#
# Terraform Azure DevOps Provider Variables
#------------------------------------------------------------------------------#
# variable "azuredevops_settings" {
#   description = "Azure DevOps settings used for Cloud Platform project"
#   type = object({
#     organization   = string
#     prefix         = string
#     default_branch = string
#     project_permissions = object({
#       read = map(string)
#     })
#     repo_permissions = object({
#       read  = map(string)
#       write = map(string)
#     })
#     projects = map(object({
#       name = string
#       id   = string
#     }))
#     templates = map(object({
#       source_url            = string
#       service_connection_id = string
#     }))
#   })
# }

# variable "azuredevops_personal_token" {
#   description = "Azure DevOps Personal Access Token for SVC Terraform"
#   type        = string
#   sensitive   = true
#   default     = null
# }
#------------------------------------------------------------------------------#
# Terraform Azure AD Provider Variables
#------------------------------------------------------------------------------#
# variable "azurerm" {
#   description = "AWS settings used for Cloud Platform"
#   default     = {}
# }
# variable "azuread" {
#   description = "Azure AD settings used for Cloud Platform"
#   type = object({
#     tenant_id = string
#     client_id = string
#   })
# }
# variable "azuread_client_secret" {
#   description = "Azure Terraform Service Principal Client Secret"
#   type        = string
#   sensitive   = true
#   default     = null
# }
#------------------------------------------------------------------------------#
# Terraform AWS Provider Variables
#------------------------------------------------------------------------------#
# variable "aws" {
#   description = "AWS settings used for Cloud Platform"
#   default     = {}
# }
# variable "aws_settings" {
#   description = "AWS settings used for Cloud Platform"
#   default     = {}
# }
# variable "aws_secret_key" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "aws_cloudplatform_tst_secret_key" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "aws_security_prd_secret_key" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "aws_cloudplatform_prd_secret_key" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "aws_secret_key_sandbox_dev" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
# variable "aws_secret_key_cc_prd" {
#   description = "Terrafrom Service Account Secret Key"
#   type        = string
#   sensitive   = true
#   default     = null
# }
#AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}
