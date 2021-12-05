resource "openstack_compute_instance_v2" "tf1" {
  name        = "tf1"          # Instance name
  provider    = openstack.ovh  # Provider name
  image_name  = "Ubuntu 20.04" # Image name
  flavor_name = "s1-2"         # Instance type name
  metadata = {
    ansible_group = "terrabuilder"
    ansible_user  = "ubuntu"
  }
  # Name of openstack_compute_keypair_v2 resource named keypair_test
  network {
    name = "Ext-Net" # Adds the network component to reach your instance
  }
}

resource "openstack_compute_instance_v2" "tf2" {
  name        = "tf2"          # Instance name
  provider    = openstack.ovh  # Provider name
  image_name  = "Ubuntu 20.04" # Image name
  flavor_name = "s1-2"         # Instance type name
  metadata = {
    ansible_group = "terrabuilder"
    ansible_user  = "ubuntu"
  }
  # Name of openstack_compute_keypair_v2 resource named keypair_test
  network {
    name = "Ext-Net" # Adds the network component to reach your instance
  }
}