locals {

  # Define Local Values in Terraform
  tags = merge(
    {
      ManagedBy   = "Spacelift",
      Owners      = "${var.global.owners}"
      Environment = "${var.global.environment}"
    }
  )
}
