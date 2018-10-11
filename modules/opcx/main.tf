data "template_file" "vro_request_vm" {
  template = "${file("${path.module}/vro_request_vm.txt")}"
  vars {
    RITM = "${var.RITM}"
    repo = "${var.repo}"
    tshirt = "${var.tshirt}"
  }
}
