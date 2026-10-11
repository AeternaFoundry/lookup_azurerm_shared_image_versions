output "shared_image_versions_lookup_id" {
  description = "Map of id values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shared_image_versions_lookup_gallery_name" {
  description = "Map of gallery_name values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.gallery_name if v.gallery_name != null && length(v.gallery_name) > 0 }
}
output "shared_image_versions_lookup_image_name" {
  description = "Map of image_name values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "shared_image_versions_lookup_images" {
  description = "Map of images values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.images if v.images != null && length(v.images) > 0 }
}
output "shared_image_versions_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "shared_image_versions_lookup_tags_filter" {
  description = "Map of tags_filter values across all shared_image_versions_lookup, keyed the same as var.shared_image_versions_lookup"
  value       = { for k, v in data.azurerm_shared_image_versions.shared_image_versions_lookup : k => v.tags_filter if v.tags_filter != null && length(v.tags_filter) > 0 }
}

