# Provider for Openstack
provider "openstack" {
  user_name           = var.openstack_project_username
  tenant_name         = var.openstack_project_name
  password            = var.openstack_project_password
  auth_url            = var.openstack_auth_url
  region              = var.openstack_region
  user_domain_name    = var.openstack_user_domain_name
  project_domain_name = var.openstack_user_domain_name
  insecure            = true
}