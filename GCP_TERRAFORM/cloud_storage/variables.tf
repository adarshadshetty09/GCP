variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "Storage class of the bucket"
  type        = string
  default     = "STANDARD"
}

variable "uniform_bucket_level_access" {
  description = "Whether to enforce uniform bucket-level access"
  type        = bool
  default     = true
}

variable "labels" {
  description = "Labels to assign to the bucket"
  type        = map(string)
  default = {
    env = "staging"
  }
}

variable "force_destroy" {
  description = "Whether to allow destroying non-empty buckets"
  type        = bool
  default     = true
}

variable "public_access_prevention" {
  description = "Public access prevention setting"
  type        = string
  default     = "enforced"
}

variable "versioning_enabled" {
  description = "Whether versioning is enabled"
  type        = bool
  default     = true
}

variable "retention_policy" {
  description = "Retention policy for the bucket"
  type = object({
    retention_period = number
  })
  default = null
}


variable "kms_key_name" {
  description = "The Cloud KMS key to use for bucket encryption"
  type        = string
  default     = null
}