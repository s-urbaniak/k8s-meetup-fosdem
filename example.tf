resource "azurerm_virtual_machine" "master" {
  count   = "${var.master_count}"
  vm_size = "${var.vm_size}"

  os_profile {
    computer_name  = "${var.cluster_name}-master-${count.index}"
    admin_username = "core"
    custom_data    = "${base64encode("${data.ignition_config.master.rendered}")}"
  }
}
