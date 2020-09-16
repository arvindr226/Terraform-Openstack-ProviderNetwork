resource "openstack_networking_network_v2" "network_1" {
  count = var.network_count
  name           = var.network_name[count.index]
  admin_state_up = "true"
  external = "true"
  shared = "true"
  //transparent_vlan = "true"
  segments {
    physical_network = var.network_provider
    segmentation_id = var.vlan_id[count.index]
    network_type = "vlan"
  }
}

resource "openstack_networking_subnet_v2" "subnet_1" {
  count = var.network_count
  name       = var.subnet_name[count.index]
  network_id = element(openstack_networking_network_v2.network_1.*.id, count.index)
  cidr       = var.network_cidr[count.index]
  ip_version = 4
  gateway_ip = var.gateway[count.index]
  enable_dhcp = false
}