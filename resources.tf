data "azurerm_subnet" "tomtom-default" {
  name                 = "SN-tomtom-default"
  virtual_network_name = "VNET-tomtom-default"
  resource_group_name  = "RG-weu-vnet-tomtom-default"
}

resource "azurerm_linux_virtual_machine" "ansible" {
  name                    = "${var.vm-name}"
  location                = var.region
  resource_group_name     = azurerm_resource_group.main.name
  size                    = "${var.size["ansible"]}"

  admin_username          = "azureuser"
  admin_ssh_key {
    username   = "azureuser"
    public_key = var.adminaccount.public_key
  }

  disable_password_authentication = true
  network_interface_ids   = [azurerm_network_interface.nic01.id]
  source_image_id = "${var.source_image_id}"

  os_disk {
    name = "${var.resource_prefix}-osdisk"
    
    caching           = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  tags = var.tags-acc
}
resource "azurerm_network_interface" "nic01" {
 name                = "${var.vm-name}-${format("%s01",var.network-interface-name)}"
 location            = var.region
 resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = "LAN"
    subnet_id                     = "${data.azurerm_subnet.tomtom-default.id}"
    private_ip_address_allocation = "Dynamic"
  }
 tags = var.tags-acc
}

#resource "azurerm_network_interface" "nic02" {
# name                = "${var.vm-name}-${format("%s02",var.network-interface-name)}"
# location            = var.region
# resource_group_name = azurerm_resource_group.main.name
#
#  ip_configuration {
#    name                          = "LAN"
#    private_ip_address_allocation = "Dynamic"
#  }
# tags = var.tags-acc
#}
