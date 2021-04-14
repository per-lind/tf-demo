terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
#      configuration_aliases = [openstack.Sto2, openstack.sto1hs]
    }
  }
  required_version = ">= 0.14"
}

provider openstack {
    alias = "Sto2"
}
provider openstack {
    alias = "sto1hs"
}
