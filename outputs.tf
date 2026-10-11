output "cloud_instance_groups_lookup_instance_groups" {
  description = "Map of instance_groups values across all cloud_instance_groups_lookup, keyed the same as var.cloud_instance_groups_lookup except keys with no instance_groups are omitted"
  value       = { for k, v in data.ovh_cloud_instance_groups.cloud_instance_groups_lookup : k => v.instance_groups if v.instance_groups != null && length(v.instance_groups) > 0 }
}
output "cloud_instance_groups_lookup_service_name" {
  description = "Map of service_name values across all cloud_instance_groups_lookup, keyed the same as var.cloud_instance_groups_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_instance_groups.cloud_instance_groups_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

