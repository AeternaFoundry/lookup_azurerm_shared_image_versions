variable "shared_image_versions_lookup" {
  description = <<EOT
Map of shared_image_versions_lookup, attributes below
Required:
    - gallery_name
    - image_name
    - resource_group_name
Optional:
    - tags_filter
EOT

  type = map(object({
    gallery_name        = string
    image_name          = string
    resource_group_name = string
    tags_filter         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions_lookup : (
        v.tags_filter == null || (length(v.tags_filter) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

