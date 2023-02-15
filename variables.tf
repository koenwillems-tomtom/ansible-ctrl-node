variable "size" {
   type = map(string)

   default = {

      ansible = "Standard_A4m_v2"  }
}

variable "adminaccount" {
   description = "User name to use as the admin account on the VM(s)"
   
   type        = map(string)
   default     = {
      user = "azureuser"
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCh+JxWidxhmWMqWCEeCZp22LXuktljzldz6wRkrytRBvfPFo4qDkJZbCQYbOemhOX8NMsAzs/Dssieu0FnfXluyv5rWj5FNzeo+IggBeOgOk4Qplq7VeGQYFcEXAzU6pEIYqXTp3rHW/1otGxc9/xU5ViLgFfE5Ou4QHEK+SoyGBPovetU+TU9oTZt5x0o+qeP3wzOpNPaj3NojRlGUvQ4z2HPWuzcJAutPzL+Xl2rFVYj8jCgzZNrgqwa5VFSs2IsaGXOysJ8f0oWajYgpuBSWjzNhS0IU63r55gAX4MwmCvjg8LRyva3Yx8+Vnsm7ajHhBmIdA14whoiUcYLx1R/HT0/7nwHq/uTGWI8ghvrBPXl5sgS6tyRM/a72tN5ud2+bKB9b33xgYu5wCtSRN8iPm8672Y+Ep0KCEu+qEopsZE9F/Lhh4cJZuDon6ns/QPzuOYe9PwTw8RnD3MaJ3cNLa+8mg1Kw1qM5ZG7MNFsTesMBpwxptrp3/MjkC8GJO9/ebxe9nZCHDvNDrbNqmGKjsUQuC1rGW5W4T1l6OY+CkwAEYbEnvo7HSDL/aDMcMmvOOYN+Q9pNa2QVe9i2MVMJ+t1cuOgFloZAQT/PLi1fz4TLRUZoYZNb2dHgCl2Fhp0q8JPDCXNOfAJTKZrdqX/Dwurg3GmxPYRaPzuzERe0w== rsa-key-20220406"
   }
}

variable "source_image_id" {
    description = "The ID of the Image which this Virtual Machine should be created from"
    type        = string
    default     = "/sharedGalleries/9bd05406-c85b-4e5d-9b66-c8920883291a-PREVIEWCOMPUTEIMAGEGALLERY/images/ubuntu-22.04"
}

variable "region" {
  default = "westeurope"
}
variable "tags-acc" {
   description = "Map of the tags to use for the resources that are deployed"
   type        = map(string)
   default = {
      deployer    = "koen.willems@tomtom.com"
      stage       = "production"
      application = "terraform"
   }
}
variable "vm-name" {
   default = "azsrvuc-ansible-ctrl01"
}
variable "data-disk-name" {
   default = "data"
}
variable "network-interface-name" {
   default = "nic"
}
variable "ansible-controle-node" {
   default = "ansible-controle-node"
}
variable "resource_prefix" {
type = string
}
variable "node_count" {
type = number
}