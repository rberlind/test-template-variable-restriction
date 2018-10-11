module "my_web" {
  source  = "./modules/opcx"
  RITM = "Terraform_Unique_ID_42"
  tshirt = "small"
  repo = "apachedemo"
}

output "rendered_file" {
  value = "${module.my_web.rendered_file}"
}
