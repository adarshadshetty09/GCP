resource "google_storage_bucket" "bucket" {
  name                        = "bank-name"
  project                     = var.project_id
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  labels                      = var.labels
  force_destroy               = var.force_destroy
  public_access_prevention    = var.public_access_prevention

  versioning {
    enabled = var.versioning_enabled
  }

  dynamic "retention_policy" {
    for_each = var.retention_policy != null ? [var.retention_policy] : []
    content {
      retention_period = retention_policy.value.retention_period
    }
  }

  # dynamic "encryption" {
  #   for_each = var.kms_key_name != null && var.kms_key_name != "" ? [1] : []
  #   content {
  #     default_kms_key_name = var.kms_key_name
  #   }
  # }
}
