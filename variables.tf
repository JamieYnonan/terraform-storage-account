variable "project" {
  type        = string
  description = "The project name. It must be lowercase and have a length between 3 and 18 characters"
  nullable    = false

  validation {
    condition     = can(regex("^[a-z]{3,18}$", var.project))
    error_message = "The project name must be lowercase and have a length between 3 and 18 characters"
  }
}

variable "rg_instance" {
  type        = number
  description = "The resource group instance. It must be greater than or equal to 1 and less than or equal to 999"

  validation {
    condition     = var.rg_instance >= 1 && var.rg_instance <= 999
    error_message = "The resource group instance must be greater than or equal to 1 and less than or equal to 999"
  }
}

variable "stn_instance" {
  type        = number
  description = "The storage account instance. It must be greater than or equal to 1 and less than or equal to 999"
  nullable    = false

  validation {
    condition     = var.stn_instance >= 1 && var.stn_instance <= 999
    error_message = "The storage account instance must be greater than or equal to 1 and less than or equal to 999"
  }
}

variable "blob_delete_retention_policy_days" {
  type        = number
  description = "The days for the blob delete retention policy. It must be greater than or equal to 3 and less than or equal to 30. Default is 7"
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_delete_retention_policy_days >= 3 && var.blob_delete_retention_policy_days <= 30
    error_message = "The blob delete retention policy days must be greater than or equal to 3 and less than or equal to 30"
  }
}

variable "blob_container_delete_retention_policy_days" {
  type        = number
  description = "The days for the container delete retention policy. It must be greater than or equal to 3 and less than or equal to 30. Default is 7"
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_container_delete_retention_policy_days >= 3 && var.blob_container_delete_retention_policy_days <= 30
    error_message = "The container delete retention policy days must be greater than or equal to 3 and less than or equal to 30"
  }
}

variable "blob_change_feed_retention_in_days" {
  type        = number
  description = "The days for the change feed retention. It must be greater than or equal to 3 and less than or equal to 30. Default is 7"
  default     = 7
  nullable    = false

  validation {
    condition     = var.blob_change_feed_retention_in_days >= 3 && var.blob_change_feed_retention_in_days <= 30
    error_message = "The change feed retention in days must be greater than or equal to 3 and less than or equal to 30"
  }
}
