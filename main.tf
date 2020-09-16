module "network" {
  source = "./Network"
  network_name = var.network_name
  subnet_name = var.subnet_name
  network_cidr = var.network_cidr
  vlan_id = var.vlan_id
  network_provider = var.network_provider
  gateway = var.gateway
  network_count = var.network_count
}