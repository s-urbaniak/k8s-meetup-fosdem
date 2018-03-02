resource "vultr_instance" "master" {
  count = "${var.master_count}"

  hostname           = "master-${local.cluster_name}-${count.index}"
  name               = "master-${local.cluster_name}-${count.index}"
  os_id              = "${data.vultr_os.custom.id}"
  plan_id            = "${data.vultr_plan.master.id}"
  private_networking = true
  region_id          = "${data.vultr_region.cluster.id}"
  startup_script_id  = "${vultr_startup_script.ipxe.id}"
  tag                = "container-linux"
  user_data          = "${data.ignition_config.ipxe.*.rendered[count.index]}"
}
