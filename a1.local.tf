locals {
  owner = var.business_unit #sap
  environment = var.environment #dev
  resource_name_prefix = "${var.business_unit}-${var.environment}"
 
}