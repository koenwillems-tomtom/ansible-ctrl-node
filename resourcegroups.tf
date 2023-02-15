
resource "azurerm_resource_group" "main" {
  name     = "${format("RG-%s", var.ansible-controle-node)}"
  #  name     = "${format("RG-%s", var.spectrum-protect-servers)}"
  location = "${var.region}"

  tags = var.tags-acc
}