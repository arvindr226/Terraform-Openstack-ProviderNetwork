# Terraform-Openstack-ProviderNetwork
Terraform Openstack Provider Network Creation Templates

Create Provider network on the Openstack cluster. The network type will be `VLAN` as per this terraform. The template will help to create bulk networks.
<br>
You will require to update the identity service in the `terraform.tfvars`. <br>
`openstack_user_domain_name = "Default"` <br>
`openstack_region = "RegionOne"` <br>
`openstack_auth_url = "https://<OpenstackURL>:5000/v3"`<br>
`openstack_project_name = "Project"`<br>
`openstack_project_username = "admin"`<br>
`openstack_project_password = "Password"`<br>


`network_count` provide into terraform.tfvars according to the count you will need to provide as list. <br>
 `network_count = 2  ## Provide the number of the network` <br>
 `network_name = ["Network1","Network2"] ## Network name` <br>
 `subnet_name = ["Subnet1","Subnet2"]` <br>
 `vlan_id = [500,501] ## VLAN from the Router` <br>
 `network_cidr = ["10.20.10.0/24","10.20.20.0/24"]` <br>
 `network_provider = "datacenter" ## Provider network name` <br>
 `gateway = ["10.20.10.1","10.20.20.1"] ## Gateway of the each network` <br>
 
 # After updating this file you will require to run the terraform commands as below : <br>
 To check the plan of the terraform template <br>
 `#terraform plan` <br>
 `#terraform apply`
 
 To delete the networks create by this terraform. <br>
 `#terraform destroy`
