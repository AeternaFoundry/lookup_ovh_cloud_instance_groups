variable "cloud_instance_groups_lookup" {
  description = <<EOT
Map of cloud_instance_groups_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

