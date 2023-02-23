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
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjiobznwG0BQXIx2CzMRVIQFYPDmZQFF77pub/CA83Ml5YP5y3Seb8nVUrGIwUtenfqmp1v8lPsBr78ay/iWi1G49+/iV6rZtsLK2YmXI8e9SMiYeq9MHEbNN0iMZzZ5oS9IMvaxDtH7sagFpAxpdORvvmXq70jVIhRvLX+8I9J2FmA4+MWoOYqTaOblWBIlZxdtrcwiERoO21rV+ACFnW8ZQNAzK8+4s7Q3KFr7QL3mDLaHOOzF5/JHcOm/QfLKtxhQ5imPFNMBjZz531AtB+/RP0u32Moo5KB052oepsdxJ55v9FYoaZFecSp3afCErLjwJu1u2pPsm2Lolw+j19 rsa-key-20230223"    }
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