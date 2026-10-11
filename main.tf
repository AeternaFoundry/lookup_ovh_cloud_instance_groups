data "ovh_cloud_instance_groups" "cloud_instance_groups_lookup" {
  for_each = var.cloud_instance_groups_lookup

  service_name = each.value.service_name
}

