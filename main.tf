data "azurerm_shared_image_versions" "shared_image_versions_lookup" {
  for_each = var.shared_image_versions_lookup

  gallery_name        = each.value.gallery_name
  image_name          = each.value.image_name
  resource_group_name = each.value.resource_group_name
  tags_filter         = each.value.tags_filter
}

