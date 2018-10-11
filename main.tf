variable "tshirt" {
  description = "tshirt size"
  default = "small"
}

module "my_web" {
  source  = "./modules/opcx"
  RITM = "Terraform_Unique_ID_42"
  tshirt = "${var.tshirt}"
  repo = "apachedemo"
}

# Add fake resource to make sure that TFE runs this each time
resource "null_resource" "fake" {
   triggers {
      uuid = "${uuid()}"
   }
}

output "rendered_file" {
  value = "${module.my_web.rendered_file}"
}
