# VARIABLES
variable "tenancy_ocid" {}

variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "compartment_ocid" {}
variable "ssh_authorized_keys" {}
variable "ssh_private_key" {}
variable "master_subnet_id" {}

variable "master_mysql_root_password" {}
variable "slaves_mysql_root_password" {}
variable "master_slaves_replicate_acount" {}
variable "master_slaves_replicate_password" {}

variable "replicate_master_count" {
  description = "Number of master instances to launch. "
  default     = 1
}

variable "replicate_slave_count" {
  description = "Number of slave instances to launch. "
  default     = 3
}

variable "slave_subnet_ids" {
  type = "list"
}

variable "image_id" {
  type = "map"

  # Oracle-provided image "Oracle-Linux-7.5-2018.06.14-0"
  # See https://docs.us-phoenix-1.oraclecloud.com/images/
  default = {
    us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaaxyc7rpmh3v4yyuxcdjndofxuuus4iwd7a7wjc63u2ykycojr5djq"
    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaazq7xlunevyn3cf4wppcx2j53eb26pnnc4ukqtfj4tbjjcklnhpaa"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7qdjjqlvryzxx4i2zs5si53edgmwr2ldn22whv5wv34fc3sdsova"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaas5vonrmseff5fljdmpffffqotcqdrxkbsctotrmqfrnbjd6wwsfq"
  }
}

# variable "bastion_display_name" {
#   default = "bastion"
# }
#
# variable "bastion_shape" {
#   default = "VM.Standard2.1"
# }
#
# variable "bastion_authorized_keys" {}
#
# variable "bastion_ad_index" {
#   default = 0
# }

variable "bastion_host" {
  default = ""
}

variable "bastion_user" {
  default = "opc"
}

variable "bastion_private_key" {}