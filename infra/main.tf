variable "compartment_ocid" { type = string }

data "oci_identity_tenancy" "t" {
  tenancy_id = var.compartment_ocid
}

output "tenancy_name" {
  value = data.oci_identity_tenancy.t.name
}