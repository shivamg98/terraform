module "caf" {
  source  = "aztfmod/caf/azurerm"
  version = "5.3.11"
  
  global_settings = var.global_settings
  resource_groups = var.resource_groups
  keyvaults       = var.keyvaults
  logged_user_objectId = "f516f52d-54f2-41f0-85ee-27b8d7dc2d62"
  compute = {
    virtual_machines = var.virtual_machines
  }

  networking = {
    public_ip_addresses = var.public_ip_addresses
    vnets               = var.vnets
  }
}