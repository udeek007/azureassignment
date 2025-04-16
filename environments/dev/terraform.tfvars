prefix              = "dev"
location            = "centralindia"
resource_group_name = "dev-governance-rg"
required_tags       = ["Environment", "Owner"]
subscription_id     = "7e43e805-0130-426e-935b-5380e24fa05b"
address_space = ["10.0.0.0/16"]

subnets = [
  {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
]

environment         = "dev"
owner               = "udeek"
node_count          = 2
vm_size             = "Standard_D2ps_v6"


