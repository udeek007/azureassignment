module "policy" {
  source              = "./modules/azpolicies"
  prefix              = var.prefix
  resource_group_name = var.resource_group_name
  location            = var.location
  required_tags       = var.required_tags
}

module "network" {
  source              = "./modules/network"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  subnets             = var.subnets
}


module "aks" {
  source              = "./modules/aks"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = module.network.subnet_ids["subnet1"]
  environment         = var.environment
  owner               = var.owner
  node_count          = 2
  vm_size             = var.vm_size
}


module "keyvault" {
  source              = "./modules/keyvault"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}
