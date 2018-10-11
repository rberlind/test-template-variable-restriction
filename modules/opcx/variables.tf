variable "RITM" {
  description = "ID for requesting VM via vro"
  default = "Terraform_Unique_ID_40"
}

variable "repo" {
  description = "Which Chef cookbook to apply"
  default = "apachedemo"
}

variable "tshirt" {
  description = "T-Shirt size for VM"
  default = "small"
}
