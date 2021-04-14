terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      configuration_aliases = [openstack.Sto2, openstack.sto1hs]
    }
  }
  required_version = ">= 0.14"
}

provider "openstack" {
  alias               = "Sto2"
  auth_url            = "https://xx:5000"
  region              = "Sto2"
  user_domain_name    = "xxx"
  project_domain_name = "xxx"
  use_octavia         = "true"
  tenant_name         = "xxx"
}

provider "openstack" {
  alias               = "sto1hs"
  auth_url            = "https://xxx:5000"
  region              = "sto1hs"
  user_domain_name    = "xxx"
  project_domain_name = "xxx"
  use_octavia         = "true"
  tenant_name         = "xxx"
}

module "multi_rule" {
  providers = {
    openstack.sto1hs = openstack.sto1hs
    openstack.Sto2   = openstack.Sto2
  }
  source           = "../modules/test"
}