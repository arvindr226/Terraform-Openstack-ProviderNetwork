#### Openstack Provider details
openstack_user_domain_name = "Default"
openstack_region = "RegionOne"
openstack_auth_url = "https://<OpenstackURL>:5000/v3"
openstack_project_name = "Project"
openstack_project_username = "admin"
openstack_project_password = "Password"

#### Network ####
network_count = 2  ## Provide the number of the network
network_name = ["Network1","Network2"] ## Network name
subnet_name = ["Subnet1","Subnet2"]
vlan_id = [500,501] ## VLAN from the Router
network_cidr = ["10.20.10.0/24","10.20.20.0/24"]
network_provider = "datacenter" ## Provider network name
gateway = ["10.20.10.1","10.20.20.1"] ## Gateway of the each network